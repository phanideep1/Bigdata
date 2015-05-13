package com.hive.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdConnection {

	public static void main(String[] args) throws SQLException {
		
		Connection connection = ConnectionParams.getConnection();
		
		Statement stmt = connection.createStatement();
		
		//String sql = "select place_name, count(*) as count from tweet_info where place_name not in ('null') group by place_name order by count desc";
		
		String sql = "select lang,count(*) as count from tweet_info where lang is not null and lang not in ('null') group by lang";
		ResultSet resultSet =  stmt.executeQuery(sql);
		
		while (resultSet.next()) {
			System.out.println(resultSet.getString("lang")+""+ resultSet.getInt("count"));
			
		}
	}
}
