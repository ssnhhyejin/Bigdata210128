package com.spring.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.spring.web.service.QBoardService;
import com.spring.web.vo.FBoardVO;
import com.spring.web.vo.QBoardVO;



@Controller
@SessionAttributes("qboard")
public class QBoardController {
	
	@Autowired
	private QBoardService qboardService;
	
	   @RequestMapping(value="/getQBoardList.do")
	    public String getBoardList(QBoardVO vo, Model model) {
	        System.out.println("GetBoardListController - getBoardList()");
	        List<QBoardVO> qboardList = qboardService.getBoardList(vo);
	        model.addAttribute("qboardList",qboardList); // Model  
	        return "/resources/front/Board/quesBoardList.jsp";  // View 
	      //Redirect로 return 시키면 model 로 보냈던 객체가 없어짐으로 리턴은 forward 방식인 위 방식처럼 보내야 한다
	    }
	   
	    @RequestMapping(value="/getQBoard.do")
	    public String getBoard(QBoardVO vo, Model model) {
	        System.out.println("GetBoardController - getBoard()");

	        model.addAttribute("board",qboardService.getBoard(vo)); // Model

	        return "/resources/front/Board/quesgetBoard.jsp";
	    }

	    @RequestMapping(value="/insertQBoard.do")
	    public String insertBoard(QBoardVO vo) {
	        System.out.println("InsertBoardController - insertBoard()");

	        qboardService.insertBoard(vo);

	        //return "getBoardList.do"; // Forward
	        return "redirect:/getQBoardList.do"; // Redirect
	        
	    }

	    @RequestMapping(value="/updateQBoard.do")
	    public String updateBoard(@ModelAttribute("board") QBoardVO vo) {
	        System.out.println("UpdateBoardController - updateBoard()");

	        qboardService.updateBoard(vo);;

	        //return "getBoardList.do"; // Forward
	        return "redirect:/getQBoardList.do"; // Redirect
	    }

	    @RequestMapping(value="/deleteQBoard.do")
	    public String deleteBoard(QBoardVO vo) {
	        System.out.println("DeleteBoardController - deleteBoard()");

	        qboardService.deleteBoard(vo);

	        //return "getBoardList.do"; // Forward
	        return "redirect:/getQBoardList.do"; // Redirect
	    }
}
