package com.kh.app.workTime.controller;

import com.kh.app.home.vo.HomeVo;
import com.kh.app.member.vo.MemberVo;
import com.kh.app.workTime.service.WorkTimeService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("util")
@RequiredArgsConstructor
public class WorkTimeController {

    private final WorkTimeService service;

    @GetMapping("workTime")
    public String workTime(){

        return "util/workTime";
    }

    @GetMapping("detailData")
    @ResponseBody
    public HomeVo workTimeData(HomeVo vo, HttpSession session){
        MemberVo loginMemberVo = (MemberVo) session.getAttribute("loginMemberVo");
        String empNo = loginMemberVo.getNo();

        return service.workTimeByNo(empNo);
    }

}
