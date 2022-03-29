package hrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import hrd.vo.Member;
import mybatis.SqlSessionBean;

public class MemberDao {
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	private static MemberDao dao = new MemberDao();
	
	private MemberDao() {	}
	
	public static MemberDao getInstance() {
		return dao;
	}
	
	public int getNextSeq() {
		return 0;
	}
	
	public void insert(Member vo) {
		
	}
	
	public void update(Member vo) {
		
	}
	
	public Member selectOne(int custno) {
		return null;
	}
	
	public List<Member> selectAll() {
		return null;
	}
	
	public List<Member> searchName(String name) {
		return null;
	}
}
