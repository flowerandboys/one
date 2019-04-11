package com.mysql;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class mysql {
     public static String url="jdbc:mysql://localhost:3306/class?serverTimezone=GMT";
     public static String user="root";
     public static String pass="1403053171";
     public static Connection getconn() {
    	 Connection conn=null;
    	 try {
 			Class.forName("com.mysql.cj.jdbc.Driver");//加载驱动
 			conn = DriverManager.getConnection(url,user,pass);
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
    	 return conn;
     }
     /**
 	 * 关闭连接
 	 * @param state
 	 * @param conn
 	 */
 	public static void close (Statement state, Connection conn) {
 		if (state != null) {
 			try {
 				state.close();
 			} catch (SQLException e) {
 				e.printStackTrace();
 			}
 		}
 		
 		if (conn != null) {
 			try {
 				conn.close();
 			} catch (SQLException e) {
 				e.printStackTrace();
 			}
 		}
 	}
 	
 	public static void close (ResultSet rs, Statement state, Connection conn) {
 		if (rs != null) {
 			try {
 				rs.close();
 			} catch (SQLException e) {
 				e.printStackTrace();
 			}
 		}
 		
 		if (state != null) {
 			try {
 				state.close();
 			} catch (SQLException e) {
 				e.printStackTrace();
 			}
 		}
 		
 		if (conn != null) {
 			try {
 				conn.close();
 			} catch (SQLException e) {
 				e.printStackTrace();
 			}
 		}
 	}
}


