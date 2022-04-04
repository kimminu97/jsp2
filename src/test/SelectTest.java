package test;

import java.util.List;

import hrd.dao.MemberDao;
import hrd.vo.Member;

public class SelectTest {

	public static void main(String[] args) {
		MemberDao dao = MemberDao.getInstance();
		List<Member> list = dao.selectAll();
		System.out.println(list);
		
		Member result = dao.selectOne(100004);
		System.out.println("조회결과 : " + result);
		
		List<Member> results = dao.searchName("김순이");
		System.out.println("김순이 검색 결과 : " + results);
		System.out.println("김순이 검색 건수 : " + results.size());
	}

}
