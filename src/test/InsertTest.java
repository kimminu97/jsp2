package test;

import hrd.dao.MemberDao;
import hrd.vo.Member;

public class InsertTest {

	public static void main(String[] args) {
		MemberDao dao = MemberDao.getInstance();
		int custno = dao.getNextSeq();
		System.out.println("next seq : " + custno);
		Member vo = new Member(custno, "김다현", "010-7788-0909", "경기도 안양시", null, "A", "22");
		
		if(dao.insert(vo) !=0)
			System.out.println("회원등록이 완료되었습니다.");
		
		custno = 100042;
		Member vo2 = new Member(custno, "김다현", "010-7658-0239", "서울시 종로구 종로1가", null, "C", "26");
		int result = dao.update(vo2);
		System.out.println("update 결과 : " + result);
	}

}
