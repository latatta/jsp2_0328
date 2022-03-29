package test;

import java.util.List;

import hrd.dao.MemberDao;
import hrd.vo.Member;

public class SelectTest {

	public static void main(String[] args) {
		MemberDao dao = MemberDao.getInstance();
		List<Member> list = dao.selectAll();
		for (Member m : list) 
			System.out.println(m);
		
		System.out.println("===============================================================================================================");
		Member result = dao.selectOne(100001);
		System.out.println(result);
		
		System.out.println("===============================================================================================================");
		List<Member> results = dao.searchName("이축복");
		System.out.println("이축복 검색 결과 : " + results);
		System.out.println("이축복 검색 건수 : " + results.size());
	}

}
