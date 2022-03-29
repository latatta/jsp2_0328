package test;

import java.sql.Connection;

public class ConnectionTest {
	public static void main(String[] args) {
		Connection conn = OracleConnectUtil.connect();
		
		System.out.println(conn);
		OracleConnectUtil.close(conn);		
	}
}
