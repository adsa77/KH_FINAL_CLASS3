package com.kh.app.projectwork.mapper;

import com.kh.app.personal.vo.PersonalVo;
import com.kh.app.projectwork.vo.ProjectWorkVo;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ProjectWorkMapper {


    @Select("SELECT * FROM PROJECT_WORK ORDER BY NO DESC")
    public List<ProjectWorkVo> getPrjWorkList();

    @Insert("INSERT INTO PROJECT_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)\n" +
            "VALUES (SEQ_PROJECT_WORK.NEXTVAL, #{no2}, #{stateBNo}, #{typeNo}, SYSDATE, #{title}, #{content})")
    int getPrjWorkWrite(ProjectWorkVo vo);

    @Delete("DELETE FROM PROJECT_WORK WHERE NO = #{num}")
    int prjWorkDelete(@Param("num")String num);
}//class
