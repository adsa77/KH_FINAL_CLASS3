package com.kh.app.attendance.service;

import com.kh.app.attendance.dao.AttendanceDao;
import com.kh.app.home.vo.CommuteVo;
import com.kh.app.sign.vo.EmployeeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class AttendanceService {

    private final AttendanceDao dao;

    public List<CommuteVo> list(String empNo) {
        return dao.list(empNo);
    }

    public List<CommuteVo> listVo(CommuteVo vo) {
        return dao.listVo(vo);
    }

    public CommuteVo noData(String empNo) {
        return dao.noDate(empNo);
    }
}
