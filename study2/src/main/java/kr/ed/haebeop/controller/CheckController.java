package kr.ed.haebeop.controller;

import kr.ed.haebeop.test.Check;
import kr.ed.haebeop.test.CheckVO;
import kr.ed.haebeop.test.CheckValidator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/check/")
public class CheckController {

    @GetMapping("check1")
    public String check1(Model model) {
        return "/check/check1";
    }

    @PostMapping("check1")
    public String check1Pro(@RequestParam String id, @RequestParam String pw, Model model) {
        model.addAttribute("id", id);
        model.addAttribute("pw", pw);
        return "/check/check1_result";
    }

    @GetMapping("check2")
    public String check2(Model model) {
        return "/check/check2";
    }

    @PostMapping("check2")
    public String check2Pro(HttpServletRequest req, Model model) {
        model.addAttribute("id", req.getParameter("id"));
        model.addAttribute("pw", req.getParameter("pw"));
        return "/check/check2_result";
    }

    @GetMapping("check3")      //http://localhost:8081/check/check3 GET
    public String check3(Model model) {
        return "/check/check3";
    }

    @GetMapping("check3pro")   //http://localhost:8081/check/check3 GET
    public String check3Pro(@RequestParam("id") String id, @RequestParam("pw") String pw, Model model) {
        model.addAttribute("id", id);
        model.addAttribute("pw", pw);
        return "/check/check3_result";
    }

    @GetMapping("check4")      //http://localhost:8081/check/check4 GET
    public String check4(Model model) {
        return "/check/check4";
    }

    @PostMapping("check4pro")   //http://localhost:8081/check/check4 POST
    public String check4Pro(@ModelAttribute("check") Check check, Model model, BindingResult result) {
        String page = "/check/check4_result";
        CheckValidator ckVal = new CheckValidator();
        ckVal.validate(check, result);
        if(result.hasErrors()){ //폼의 유효성 검증 시 에러가 있으면, 에러페이지로 변경
            page = "/check/error4";
        }
        return page;
    }

    //Binder - 하나의 컨트롤러에서는 오로지 하나의 Validator 만을 쓸 수 밖에 없다는 단점이 있음.
    @InitBinder
    protected void initBinder(WebDataBinder binder){
        binder.setValidator(new CheckValidator());
    }

    @GetMapping("check5")      //http://localhost:8081/check/check5 GET
    public String check5(Model model) {
        return "/check/check5";
    }

    @PostMapping("check5pro")   //http://localho st:8081/check/check5 POST
    public String check5Pro(@ModelAttribute("check") @Valid Check check, Model model, BindingResult result) {
        String page = "/check/check5_result";
        if(result.hasErrors()){ //폼의 유효성 검증 시 에러가 있으면, 에러페이지로 변경
            page = "/check/error5";
        }
        return page;
    }

    @GetMapping("check6")      //http://localhost:8081/check/check6 GET
    public String check6(@ModelAttribute("chk") CheckVO chk, Model model) {
        model.addAttribute("chk", chk);
        return "/check/check6";
    }

    @PostMapping("check6pro")   //http://localho st:8081/check/check6 POST
    public String check6Pro(@ModelAttribute("check") CheckVO chk, BindingResult result, Model model) {
        String page = "/check/check6";   //폼의 유효성 검증 시 알맞은 데이터이면
        model.addAttribute("chk",chk);
        return page;
    }

    /*
    @RequestMapping("check6")
    public String check6(@ModelAttribute("chk") @Valid CheckVO chk, BindingResult result, Model model) {
        model.addAttribute("chk", chk);
        return "/check/check6";
    }
    */
}
