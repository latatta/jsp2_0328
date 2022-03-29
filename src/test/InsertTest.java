package test;

import hrd.dao.MemberDao;
import hrd.vo.Member;

public class InsertTest {

	public static void main(String[] args) {
		MemberDao dao = MemberDao.getInstance();
		int custno = dao.getNextSeq();
		System.out.println("next seq : " + custno);
		
		Member vo = new Member(custno, "김다현", "010-7788-0909", "경기도 안양시", null, "A", "22");
		
		dao.insert(vo);
	}

}
