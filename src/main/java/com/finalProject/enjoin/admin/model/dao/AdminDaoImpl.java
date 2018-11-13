package com.finalProject.enjoin.admin.model.dao;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

@Repository
public class AdminDaoImpl implements AdminDao {
	//일반회원 회원수 조회
	@Override
	public int getListCount(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getListCount");
	}
	//일반회원 정보 조회
	@Override
	public List<Member> memberSelect(SqlSession sqlSession, PageInfo pi) {
			
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.memberSelect", null, rowBounds);
	}
	//기업회원 회원수 조회
	@Override
	public int getListCount1(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getListCount1");
	}
	//기업 회원 정보 조회
	@Override
	public List<Member> companyMemberSelect(SqlSession sqlSession, PageInfo pi1) {
		
		int offset = (pi1.getCurrentPage() - 1) * pi1.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi1.getLimit());
		
		
		return sqlSession.selectList("Admin.companyMemberSelect", null, rowBounds) ;
	}
	//일반회원 회원번호로 조회
	@Override
	public List<Member> userNoSelect(SqlSession sqlSession, int userNo) {
		
		return sqlSession.selectList("Admin.userNoSelect", userNo);
	}
	//일반회원 아이디를 통한 조회
	@Override
	public List<Member> userIdSelect(SqlSession sqlSession, String userId) {
		
		return sqlSession.selectList("Admin.userIdSelect", userId);
	}
	
	//동일이름 리스트 갯수 조회
	public int getMemberNameListCount(SqlSession sqlSession, String userName) {
		
		return sqlSession.selectOne("Admin.getMemberNameListCount", userName);
	}
	//일반회원 이름을 통한 조회
	@Override
	public List<Member> userNameSelect(SqlSession sqlSession, String userName, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.userNameSelect", userName, rowBounds);
	}
	//일반회원 전화번호를 통한 조회
	@Override
	public List<Member> userPhoneSelect(SqlSession sqlSession, String phone) {
		
		
		return sqlSession.selectList("Admin.userPhoneSelect", phone);
	}
	//이메일을 통한 조회
	@Override
	public List<Member> userEmailSelect(SqlSession sqlSession, String email) {
		
		return sqlSession.selectList("Admin.userEmailSelect",email);
	}
	//유저 블랙처리
	@Override
	public int updateStatusMember(SqlSession sqlSession, int userNo) {
		
		return sqlSession.update("Admin.updateStatusMember",userNo);
	}
	//기업상호명을 통한조회
	@Override
	public List<Member> copNameSelect(SqlSession sqlSession, String copName) {

		return sqlSession.selectList("Admin.copNameSelect",copName);
	}
	//기업 유저아이디를 통한 조회
	@Override
	public List<Member> copUserIdSelect(SqlSession sqlSession, String userId) {
		
		return sqlSession.selectList("Admin.copUserIdSelect", userId);
	}
	//기업 사업자 등록번호를 통한 조회
	@Override
	public List<Member> copNoSelect(SqlSession sqlSession, String copNo) {
		
		return sqlSession.selectList("Admin.copNoSelect",copNo);
	}
	//기업 담당자 이메일을 통한 조회
	@Override
	public List<Member> managerEmailSelect(SqlSession sqlSession, String managerEmail) {
		
		return sqlSession.selectList("Admin.managerEmailSelect",managerEmail);
	}
	//기업회원 블랙처리
	@Override
	public int updateCopStatusMember(SqlSession sqlSession, int userNo) {
		
		return sqlSession.update("Admin.updateCopStatusMember", userNo);
	}
	//블랙회원 리스트 갯수
	@Override
	public int getBlackListCount(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getBlackListCount");
	}
	//블랙일반회원 정보 조회
	@Override
	public List<Member> selectBlackMemberList(SqlSession sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.selectBlackMemberList", null, rowBounds);
	}
	//블랙 기업회원 리스트 갯수 
	@Override
	public int getBlackListCount1(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getBlackListCount1");
	}
	//블랙 기업회원 정보 조회
	@Override
	public List<Member> companyBlackMemberSelect(SqlSession sqlSession, PageInfo pi1) {
		
		int offset = (pi1.getCurrentPage() - 1) * pi1.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi1.getLimit());
		
		return sqlSession.selectList("Admin.companyBlackMemberSelect", null, rowBounds);
	}
	//블랙 일반회원 해제 처리
	@Override
	public int updateStatusBlackMember(SqlSession sqlSession, int userNo) {
		
		return sqlSession.update("Admin.updateStatusBlackMember", userNo);
	}
	//블랙 기업회원 해제 처리
	@Override
	public int updateCopStatusBlackMember(SqlSession sqlSession, int userNo) {
		
		return sqlSession.update("Admin.updateCopStatusBlackMember", userNo);
	}
	//블랙회원 아이디 검색
	@Override
	public List<Member> userBlackIdSelect(SqlSession sqlSession, String userId) {
		
		return sqlSession.selectList("Admin.userBlackIdSelect", userId);
	}
	//블랙 일반 회원 이름 리스트 갯수 조회
	@Override
	public int getBlackMemberNameListCount(SqlSession sqlSession, String userName) {
		
		return sqlSession.selectOne("Admin.getBlackMemberNameListCount", userName);
	}
	//블랙 일반 회원 이름으로 정보 조회
	@Override
	public List<Member> userBlackNameSelect(SqlSession sqlSession, String userName, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.userBlackNameSelect", userName, rowBounds);
	}
	//블랙 회원 상호명으로 정보 조회
	@Override
	public List<Member> copNameBlackSelect(SqlSession sqlSession, String copName) {
		
		return sqlSession.selectList("Admin.copNameBlackSelect",copName);
	}
	//블랙 기업회원 이름으로 정보 조회
	@Override
	public List<Member> blackCopUserIdSelect(SqlSession sqlSession, String userId) {
		
		return sqlSession.selectList("Admin.blackCopUserIdSelect", userId);
	}
	//크루 리스트 갯수 조회
	@Override
	public int getCrewListCount(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getCrewListCount");
	}
	//크루 리스트 조회
	@Override
	public List<Crew> crewListSelect(SqlSession sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.crewListSelect", null, rowBounds);
	}
	//블랙 크루 리스트 갯수 조회
	@Override
	public int getCrewBlackListCount1(SqlSession sqlSession) {

		return sqlSession.selectOne("Admin.getCrewBlackListCount1");
	}
	//블랙 크루 정보 조회
	@Override
	public List<Crew> blackCrewListSelect(SqlSession sqlSession, PageInfo pi1) {

		int offset = (pi1.getCurrentPage() - 1) * pi1.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi1.getLimit());
		
		return sqlSession.selectList("Admin.blackCrewListSelect", null, rowBounds);
	}
	//크루를 블랙상태로 만듬
	@Override
	public int updateStatusBlackCrew(SqlSession sqlSession, int crew_Id) {
		
		return sqlSession.update("Admin.updateStatusBlackCrew", crew_Id);
	}
	//크루의 블랙 상태를 풀음
	@Override
	public int updateStatusCrew(SqlSession sqlSession, int crew_Id) {
		
		return sqlSession.update("Admin.updateStatusCrew", crew_Id);
	}
	

}
