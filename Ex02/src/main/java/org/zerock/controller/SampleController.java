package org.zerock.controller;

import org.springframework.http.MediaType;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@RequestMapping("/sample/*")
@Controller
@Log4j
public class SampleController {
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_MEMBER')")
	@GetMapping("/annoMember")
	public void doMember2() {
		log.info("logined annotation member");
	}
	
	@Secured({"ROLE_ADMIN"})
	@GetMapping("/annoAdmin")
	public void doAdmin2() {
		log.info("logined annotation admin");
	}
	
	@GetMapping(value = "/getText",produces = "text/plain; charset=UTF-8")
	public String getText() {
		log.info("MIME TYPE: "+MediaType.TEXT_PLAIN_VALUE);
		return "안녕하세요";
	}
	
	@GetMapping("/all")
	public void doAll(){
		log.info("every");
	}
	
	@GetMapping("/admin")
	public void doAdmin(){
		log.info("every");	
		}
	
	@GetMapping("/member")
	public void doMember(){
		log.info("every");
		}
	
	
//	@GetMapping(value= "/getSample",
//			produces= {MediaType.APPLICATION_JSON_UTF8_VALUE,
//					MediaType.APPLICATION_XML_VALUE})
	/*
	@GetMapping(value= "/getSample")
	public SampleVO getSample() {
		return new SampleVO(112,"star","load");
	}
	
	@GetMapping(value ="/getList")
	public List<SampleVO> getList(){
		return IntStream.range(1,10).mapToObj(i -> new SampleVO(i,i+"fisrt",i+"last")).collect(Collectors.toList());
	}
	
	@GetMapping(value ="/getMap")
	public Map<String,SampleVO> getMap(){
		Map<String, SampleVO> map = new HashMap<>();
		map.put("Fisrt", new SampleVO(111,"그루트","주니어"));
		
		return map;
	}
	@GetMapping(value ="/getList2")
	public Map<String, List<SampleVO>> getList2(){
		Map<String, List<SampleVO>> map = new HashMap<>();
		List<SampleVO> list = new  ArrayList<>();
		list.add(new SampleVO(1,"aa","ss"));
		list.add(new SampleVO(2,"daa","ssds"));
		list.add(new SampleVO(3,"ssa","sqwes"));
		map.put("list",list);
		
		return map;
	}
	
	@GetMapping(value="/check",params= {"height","weight"})
	public ResponseEntity<SampleVO> check(Double height, Double weight){
		SampleVO vo = new SampleVO(0,""+height,""+weight);
		ResponseEntity<SampleVO> result = null;
		
		if(height<150) {
			result = ResponseEntity.status(HttpStatus.BAD_GATEWAY).body(vo);
		}else {
			result = ResponseEntity.status(HttpStatus.OK).body(vo);
		}
		return result;
	}
	
	@GetMapping("/product/{cat}/{pid}")
	public String[] getPath(
			@PathVariable("cat") String cat,
			@PathVariable("pid") Integer pid) {
		
		return new String[] {"category: " +cat,"productid: "+pid};
	}
	*/
	

}
