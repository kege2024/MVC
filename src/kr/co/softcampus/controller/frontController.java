package kr.co.softcampus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softcampus.beans.CarBean;
import kr.co.softcampus.service.CarService;

@Controller
@RequestMapping("/car")
public class frontController {

	@Autowired
	private CarService carService;
	
		
		@GetMapping("/reserveMain")
		public String reserveMain(Model model) {

			
		List<CarBean> carList = carService.getCarList();
		model.addAttribute("carList", carList);
			return "car/reserveMain";
		}
		
		
		@GetMapping("/reservePage")
		public String reservePage(Model model) {
			
			
		
			return "car/reservePage";
		}
		
		
		@GetMapping("/event")
		public String event() {
			
			return "car/event";
		}
}
