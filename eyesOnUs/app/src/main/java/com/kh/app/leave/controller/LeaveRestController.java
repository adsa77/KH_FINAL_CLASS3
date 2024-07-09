package com.kh.app.leave.controller;

import com.kh.app.businessTrip.vo.BusinessTripVo;
import com.kh.app.businessTrip.vo.ProjectVo;
import com.kh.app.leave.service.LeaveService;
import com.kh.app.leave.vo.LeaveVo;
import com.kh.app.member.vo.MemberVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("api/leave")
@RequiredArgsConstructor
public class LeaveRestController {

    private final LeaveService service;

    // 휴가 목록 조회 (신청자 입장) (API)
    @GetMapping("listForWriter")
    public Map<String, List> getLeaveListForWriter(LeaveVo leaveVo, HttpSession session){
        MemberVo loginMemberVo = (MemberVo) session.getAttribute("loginMemberVo");
        String empNo = loginMemberVo.getNo();

        // 휴가 목록 조회 (신청자 입장) (API)
        List<LeaveVo> leaveVoListForWriter = service.getLeaveListForWriter(empNo);
        Map<String, List> leaveListMapForWriter = new HashMap<>();
        leaveListMapForWriter.put("leaveVoListForWriter", leaveVoListForWriter);

        // 휴가 승인자 목록 조회 (신청자 입장) (API)
        List<LeaveVo> leaveApproverVoListForWriter = service.getLeaveApproverListForWriter(empNo);
        leaveListMapForWriter.put("leaveApproverVoListForWriter", leaveApproverVoListForWriter);

        return leaveListMapForWriter;
    } // getLeaveListForWriter

    // 휴가 목록 조회 (승인자 입장) (API)
    @GetMapping("listForApprover")
    public Map<String, List> getLeaveListForApprover(LeaveVo leaveVo, HttpSession session){
        MemberVo loginMemberVo = (MemberVo) session.getAttribute("loginMemberVo");
        String approverNo = loginMemberVo.getNo();

        // 휴가 목록 조회 (승인자 입장) (API)
        List<LeaveVo> leaveVoListForApprover = service.getLeaveListForApprover(approverNo);
        Map<String, List> leaveListMapForApprover = new HashMap<>();
        leaveListMapForApprover.put("leaveVoListForApprover", leaveVoListForApprover);

        // 휴가 승인자 목록 조회 (승인자 입장) (API)
        List<LeaveVo> leaveApproverVoListForApprover = service.getLeaveApproverListForApprover(approverNo);
        leaveListMapForApprover.put("leaveApproverVoListForApprover", leaveApproverVoListForApprover);

        return leaveListMapForApprover;
    } // getLeaveListForApprover

    // 휴가 상세 조회 (API)
    @GetMapping("detail")
    public Map<String, LeaveVo> getLeaveDetail(String leaveNo){
        // 휴가 상세 조회 (API)
        LeaveVo leaveDetailVo = service.getLeaveDetail(leaveNo);
        Map<String, LeaveVo> leaveDetailMap = new HashMap<>();
        leaveDetailMap.put("leaveDetailVo", leaveDetailVo);

        // 휴가 승인자 상세 조회 (API)
        LeaveVo leaveApproverDetailVo = service.getLeaveApproverDetail(leaveNo);
        leaveDetailMap.put("leaveApproverDetailVo", leaveApproverDetailVo);

        return leaveDetailMap;
    } // getLeaveDetail

    // 휴가 승인 (API)
    @PutMapping("approve")
    public Map<String, Integer> updateLeaveApprove(LeaveVo leaveVo){
        int leaveApproveResult = service.updateLeaveApprove(leaveVo);

        Map<String, Integer> leaveApproverResultMap = new HashMap<>();
        leaveApproverResultMap.put("leaveApproveResult", leaveApproveResult);

        return leaveApproverResultMap;
    } // updateLeaveApprove
} // class
