package org.zerock.task;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.zerock.domain.BoardAttachVO;
import org.zerock.mapper.BoardAttachMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Component
public class FileCheckTask {
	@Setter(onMethod_ = { @Autowired })
	private BoardAttachMapper attachMapper;

	// 어제 만든 파일 구하기
	private String getFolderYesterday() { 
		SimpleDateFormat sdf = new  SimpleDateFormat("yyyy-MM-dd"); 
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, -1);
		String str = sdf.format(cal.getTime());
		return str.replace("-", File.separator);
	}
	
	@Scheduled(cron = "0 0 15 * * *")
	public void checkFiles() throws Exception {
		log.warn("file check task run.................");
		log.warn("====================================");
		
		// 데이터베이스 파일 목록 
		// 어제 업로드된 첨부파일 목록 구하기
		List<BoardAttachVO> fileList = attachMapper.getOldFiles();
		
		// 폴더와 데이터베이스 파일목록 확인할 준비
		// 어제 업로드된 첨부파일 목록으로 파일경로목록 구함
		List<Path> fileListPaths = fileList.stream()
			.map(vo -> Paths.get("C:\\upload", vo.getUploadPath(), vo.getUuid() + "_" + vo.getFileName()))
			.collect(Collectors.toList());
		
		// 이미지파일의 경우 썸네일 파일경로목록 구함
		fileList.stream().filter(vo -> vo.isFileType() == true)
			.map(vo -> Paths.get("C:\\upload",vo.getUploadPath(),"s_"+vo.getUuid()+"_"+vo.getFileName()))
			.forEach(p -> fileListPaths.add(p));
		
		log.warn("===============================================================");
		fileListPaths.forEach(p -> log.warn(p));
		
		// 전날폴더 파일
		File targetDir = Paths.get("C:\\upload",getFolderYesterday()).toFile();
		
		// attach테이블에 없는 파일 목록 구하기
		// 어제 디렉토리와 비교해서 삭제할 파일 목록 구하기
		File[] removeFiles = targetDir.listFiles(file -> fileListPaths.contains(file.toPath()) == false);
		log.warn("===============================================================");
		for(File file : removeFiles) {
			log.warn(file.getAbsoluteFile());
			file.delete();
		}
	}
}
