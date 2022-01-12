package com.spring.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.spring.web.service.FBoardService;
import com.spring.web.vo.FBoardVO;



@Controller
@SessionAttributes("fboard")
public class FBoardController {
	
	@Autowired
	private FBoardService fboardService;
	
	   @RequestMapping(value="/getFBoardList.do")
	    public String getBoardList(FBoardVO vo, Model model) {
	       
	        model.addAttribute("fboardList",fboardService.getBoardList(vo)); // Model  
	        System.out.println("GetBoardListController - getBoardList()");
	        return "/resources/front/Board/freeBoardList.jsp";  // View  
	        //Redirect로 return 시키면 model 로 보냈던 객체가 없어짐으로 리턴은 forward 방식인 위 방식처럼 보내야 한다
	    }
	   
	    @RequestMapping(value="/getFBoard.do")
	    public String getBoard(FBoardVO vo, Model model) {
	        System.out.println("GetBoardController - getBoard()");

	        model.addAttribute("board",fboardService.getBoard(vo)); // Model

	        return "/resources/front/Board/freegetBoard.jsp";
	    }

	    @RequestMapping(value="/insertFBoard.do")
	    public String insertBoard(FBoardVO vo) {
	        System.out.println("InsertBoardController - insertBoard()");

	        fboardService.insertBoard(vo);

	        //return "getBoardList.do"; // Forward
	        return "redirect:/getFBoardList.do"; // Redirect
	        
	    }

	    @RequestMapping(value="/updateFBoard.do")
	    public String updateBoard(@ModelAttribute("board") FBoardVO vo) {
	        System.out.println("UpdateBoardController - updateBoard()");

	        fboardService.updateBoard(vo);;

	        //return "getBoardList.do"; // Forward
	        return "redirect:/getFBoardList.do";
	    }

	    @RequestMapping(value="/deleteFBoard.do")
	    public String deleteBoard(FBoardVO vo) {
	        System.out.println("DeleteBoardController - deleteBoard()");

	        fboardService.deleteBoard(vo);

	        //return "getBoardList.do"; // Forward
	        return "redirect:/getFBoardList.do"; 
	    }
}
