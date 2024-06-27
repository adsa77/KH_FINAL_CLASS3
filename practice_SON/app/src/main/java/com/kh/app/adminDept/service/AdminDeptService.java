package com.kh.app.adminDept.service;

import com.kh.app.adminDept.dao.AdminDeptDao;
import com.kh.app.adminDept.vo.DivisionVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AdminDeptService {

    private final AdminDeptDao dao;

    public List<DivisionVo> adminDeptList(int page, int size) {
        int offset = (page - 1) * size;
        return dao.adminDeptList(offset, size);
    }

    public int getTotalCount() {
        return dao.getTotalCount();
    }

    public List<DivisionVo> adminDeptSearch(String empCategory, String searchBox, int page, int size) {
        int offset = (page - 1) * size;
        return dao.adminDeptSearch(empCategory, searchBox, offset, size);
    }

    public List<DivisionVo> adminDeptSearchData(String empCategory, String searchBox, int page, int size) {
        int offset = (page - 1) * size;
        return dao.adminDeptSearchData(empCategory, searchBox, page, size);
    }

    @Transactional
    public void enrollDiv(DivisionVo divisionVo) {
        String deptName = dao.getDeptName(divisionVo.getDeptCode());
        divisionVo.setDeptName(deptName);
        dao.enrollDiv(divisionVo);
    }

    @Transactional
    public List<DivisionVo> enrollDivData(DivisionVo divisionVo) {
        String deptName = dao.getDeptName(divisionVo.getDeptCode());
        divisionVo.setDeptName(deptName);
        return dao.enrollDivData(divisionVo);
    }

    public DivisionVo getDivisionByCode(String code) {
        return dao.getDivisionByCode(code);
    }

    @Transactional
    public void updateDivision(DivisionVo divisionVo) {
        dao.updateDivision(divisionVo);
    }


}
