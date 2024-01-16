package com.multi.semi.member.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.semi.member.model.vo.Member;

@Mapper
public interface MemberMapper {
	int selectCount();
	List<Member> selectAll();
	Member selectMember(int mno);
	Member selectMemberById(String id);
	Member selectMemberByKakaoToken(String token);
	int insertMember(Member member);
	int updateMember(Member member);
	// map : password, mno
	int updatePwd(Map<String, String> map);
	int deleteMember(int mno);
}



