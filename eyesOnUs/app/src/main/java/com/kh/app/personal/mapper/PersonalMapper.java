package com.kh.app.personal.mapper;

import com.kh.app.personal.vo.PersonalVo;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface PersonalMapper {

    @Select("SELECT * FROM PERSONAL_WORK ORDER BY NO DESC")
    List<PersonalVo> getPersonalList();

    @Insert("INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)\n" +
            "VALUES (SEQ_PERSONAL_WORK.NEXTVAL, #{no2}, #{stateBNo}, #{typeNo}, SYSDATE, #{title}, #{content})")
    int getPersonalWrite(PersonalVo vo);

    @Delete("DELETE FROM PERSONAL_WORK WHERE NO = #{num}")
    int personalDelete(@Param("num") String num);


}//class
