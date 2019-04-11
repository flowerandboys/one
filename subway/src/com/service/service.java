package com.service;

import java.util.ArrayList;
import java.util.List;

import com.mysql.mysql;

import Bean.subway;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class service {
	//ͨ����ʼվ�յ�վվ���õ���վ��վ����ɵ�����
    public static List<String> search01(String stop_name01,String stop_name02) 
    {
    	String sql01="select stop_id from  stop where stop_name='"+stop_name01+"'";//��ѯ���վ��id
    	String sql02="select stop_id from  stop where stop_name='"+stop_name02+"'";//��ѯ�յ�վ��id
    	Connection conn=mysql.getconn();//�������ݿ�	
    	List<String> list01=new ArrayList<>();
    	Statement s=null;
	   	ResultSet rs=null;
	   	int stop_id01 = 0,stop_id02=0;
	   	try {
			s=conn.createStatement();
			rs=s.executeQuery(sql01);
			//�õ�վ��
			while(rs.next()) {
				stop_id01=rs.getInt("stop_id");
				list01.add(String.valueOf(stop_id01));
			}
			if(list01.size()==1)
			{
				list01.add("0");
			}
			//list01.add(String.valueOf(stop_id01));
			rs=s.executeQuery(sql02);
			while(rs.next()) {
				stop_id02=rs.getInt("stop_id");
				list01.add(String.valueOf(stop_id02));
			}
			if(list01.size()==3)
			{
				list01.add("0");
			}
			//list01.add(String.valueOf(stop_id02));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   finally {
	   	 mysql.close(rs, s, conn);
	   	}
		return list01;
    }
    //ֱ��  1 
    public static List<String> stright01(int stop_id01,int stop_id02,List<String> List)
    {
    	String sql=null;
    	Statement s=null;
   	    ResultSet rs=null;
   	    Connection conn=mysql.getconn();
   	    int line_id01=0;
   	    List<String>list02=new ArrayList<>();
   	    if(stop_id01<stop_id02)               //����յ�����λ��ǰ��
   	    {
   	    	sql="select stop_name from stop where stop_id >='"+stop_id01+"'"+"and stop_id <='"+stop_id02+"'";
   	    	try {
   	    		s=conn.createStatement();
   	    		rs=s.executeQuery(sql);
   	    		while(rs.next()) 
   	    		{
   	    			String stop_name=rs.getString("stop_name");
   	    			list02.add(stop_name);
   	    		}
   	    		line_id01=stop_id01/100;
   	    		List.add(list02.get(0).concat("   (").concat(String.valueOf(line_id01)).concat("����)"));
   	    		for(int i=1;i<list02.size()-1;i++)
   	    		{
   	    			List.add(list02.get(i));
   	    		}
   	    		List.add(list02.get(list02.size()-1).concat("   (").concat(String.valueOf(line_id01)).concat("����)"));
   	    	} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
		{
			sql="select stop_name from stop where stop_id >='"+stop_id02+"'"+"and stop_id <='"+stop_id01+"' order by stop_id DESC";
			try {
				s=conn.createStatement();
				rs=s.executeQuery(sql);
				while(rs.next()) 
				{
					String stop_name=rs.getString("stop_name");
					list02.add(stop_name);
				}
				line_id01=stop_id01/100;
   	    		List.add(list02.get(0).concat("   (").concat(String.valueOf(line_id01)).concat("����)"));
   	    		for(int i=1;i<list02.size()-1;i++)
   	    		{
   	    			List.add(list02.get(i));
   	    		}
   	    		List.add(list02.get(list02.size()-1).concat("   (").concat(String.valueOf(line_id01)).concat("����)"));
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
			   	 mysql.close(rs, s, conn);
		   	}
		}
   	    return List;
    }
    
  //ֱ��  2  ���ظ������ʼ��
    public static void stright02(int stop_id01,int stop_id02,List<String> list02)
    {
    	String sql=null;
    	Statement s=null;
   	    ResultSet rs=null;
   	    Connection conn=mysql.getconn();
   	    if(stop_id01<stop_id02)               //����յ�����λ��ǰ��
   	    {
   	    	sql="select stop_name from stop where stop_id >'"+stop_id01+"'"+"and stop_id <='"+stop_id02+"'";
   	    	try {
   	    		s=conn.createStatement();
   	    		rs=s.executeQuery(sql);
   	    		while(rs.next()) 
   	    		{
   	    			String stop_name=rs.getString("stop_name");
   	    			list02.add(stop_name);
   	    		}
   	    	} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
		{
			sql="select stop_name from stop where stop_id >='"+stop_id02+"'"+"and stop_id <'"+stop_id01+"' order by stop_id DESC";
			try {
				s=conn.createStatement();
				rs=s.executeQuery(sql);
				while(rs.next()) 
				{
					String stop_name=rs.getString("stop_name");
					list02.add(stop_name);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
			   	 mysql.close(rs, s, conn);
		   	}
		}
    }
    
  //ֱ��  3 ���ظ�����յ�վ
    public static List<String> stright03(int stop_id01,int stop_id02,List<String> List)
    {
    	String sql=null;
    	Statement s=null;
   	    ResultSet rs=null;
   	     List<String>list02=new ArrayList<>();
   	     int line_id01=0;
   	    Connection conn=mysql.getconn();
   	    if(stop_id01<stop_id02)               //����յ�����λ��ǰ��
   	    {
   	    	sql="select stop_name from stop where stop_id >='"+stop_id01+"'"+"and stop_id <'"+stop_id02+"'";
   	    	try {
   	    		s=conn.createStatement();
   	    		rs=s.executeQuery(sql);
   	    		while(rs.next()) 
   	    		{
   	    			String stop_name=rs.getString("stop_name");
   	    			list02.add(stop_name);
   	    		}
   	    		line_id01=stop_id01/100;
   	    		List.add(list02.get(0).concat("   (").concat(String.valueOf(line_id01)).concat("����)"));
   	    		for(int i=1;i<list02.size();i++)
   	    		{
   	    			List.add(list02.get(i));
   	    		}
   	    		
   	    	} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
		{
			sql="select stop_name from stop where stop_id >'"+stop_id02+"'"+"and stop_id <='"+stop_id01+"' order by stop_id DESC";
			try {
				s=conn.createStatement();
				rs=s.executeQuery(sql);
				while(rs.next()) 
				{
					String stop_name=rs.getString("stop_name");
					list02.add(stop_name);
				}
				line_id01=stop_id01/100;
   	    		List.add(list02.get(0).concat("   (").concat(String.valueOf(line_id01)).concat("����)"));
   	    		for(int i=1;i<list02.size();i++)
   	    		{
   	    			List.add(list02.get(i));
   	    		}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
			   	 mysql.close(rs, s, conn);
		   	}
		}
   	    return List;
    }
    //�ж���������û�н���  ����ֵ��Ϊ��ʱ�����н���   ��������������
    public static List<String> ifhave(int line_id01,int line_id02)
    {
    	List<String> point=new ArrayList<>();
    	String sql="select s2.stop_name from stop s1 join stop s2 "		//��ѯ�Ƿ��н���
    			+ "on s1.stop_name=s2.stop_name "
    			+ "where s1.stop_id!=s2.stop_id "
    			+ "and s1.stop_id >='"+line_id01*100+"'and s1.stop_id <='"+(line_id01+1)*100+"'"
    			+ "and s2.stop_id >='"+line_id02*100+"'and s2.stop_id <='"+(line_id02+1)*100+"'";
    	Connection conn=mysql.getconn();
    	Statement s=null;
   	    ResultSet rs=null;
   	    try {
			s=conn.createStatement();
			rs=s.executeQuery(sql);
			while(rs.next())
			{
				String x=rs.getString("stop_name");
				point.add(x);
			}
			if(point.size()==1)
			{
				point.add("0");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		   	 mysql.close(rs, s, conn);
		   	}
		
    	return point;
    }
    
    //�󻻳����·��      ����1��
    public static List<String> change01(int line_id01,int line_id02,int stop_id01,int stop_id02,List<String> list02)
    {
    	String sql=null;
    	Connection conn=mysql.getconn();
    	Statement s=null;
   	    ResultSet rs=null;
   	    int point_id=0;
   	    List<String> listone=new ArrayList<>();
   	    List<String> listtwo=new ArrayList<>();
   	    List<String> listthree=new ArrayList<>();
   	    List<String> listfour=new ArrayList<>();
   	    List<String> point=new ArrayList<>();
        point=ifhave(line_id01,line_id02);
        if(point.size()!=0) 
        {
        	if(!(point.get(0).equals("0"))&&point.get(1).equals("0"))           //����ֱ����һ������
        	{
        		try {
        			sql="select stop_id from stop where stop_name='"+point.get(0)+"'and stop_id>='"+line_id01*100+"'and stop_id <='"+(line_id01+1)*100+"'";
        			s=conn.createStatement();
        			rs=s.executeQuery(sql);
        			while(rs.next())
        			{
        				point_id=rs.getInt("stop_id");
        			}
        			stright03(stop_id01,point_id,listone);
        			sql="select stop_id from stop where stop_name='"+point.get(0)+"'and stop_id>='"+line_id02*100 +"'and stop_id <='"+(line_id02+1)*100+"'";
        			rs=s.executeQuery(sql);
        			while(rs.next())
        			{
        				point_id=rs.getInt("stop_id");
        			}
        			stright01(point_id,stop_id02,listtwo);
        			listone.addAll(listtwo);
        			list02.addAll(listone);
        		} catch (SQLException e) {
        			// TODO Auto-generated catch block
        			e.printStackTrace();
        		}
        	}
            if(!(point.get(0).equals("0"))&&!(point.get(1).equals("0")))		//��������
        	{         
        		try {
        			sql="select stop_id from stop where stop_name='"+point.get(0)+"'and stop_id>='"+line_id01*100+"'and stop_id <='"+(line_id01+1)*100+"'";
        			s=conn.createStatement();
        			rs=s.executeQuery(sql);
        			while(rs.next())
        			{
        				point_id=rs.getInt("stop_id");
        			}
        			stright03(stop_id01,point_id,listone);
        			sql="select stop_id from stop where stop_name='"+point.get(0)+"'and stop_id>='"+line_id02*100 +"'and stop_id <='"+(line_id02+1)*100+"'";
        			rs=s.executeQuery(sql);
        			while(rs.next())
        			{
        				point_id=rs.getInt("stop_id");
        			}
        			stright01(point_id,stop_id02,listtwo);
        			listone.addAll(listtwo);
        		} catch (SQLException e) {
        			// TODO Auto-generated catch block
        			e.printStackTrace();
        		}
        		//�ڶ�������
        		try {
        			sql="select stop_id from stop where stop_name='"+point.get(1)+"'and stop_id>='"+line_id01*100+"'and stop_id <='"+(line_id01+1)*100+"'";
        			s=conn.createStatement();
        			rs=s.executeQuery(sql);
        			while(rs.next())
        			{
        				point_id=rs.getInt("stop_id");
        			}
        			stright03(stop_id01,point_id,listthree);
        			sql="select stop_id from stop where stop_name='"+point.get(1)+"'and stop_id>='"+line_id02*100 +"'and stop_id <='"+(line_id02+1)*100+"'";
        			rs=s.executeQuery(sql);
        			while(rs.next())
        			{
        				point_id=rs.getInt("stop_id");
        			}
        			stright01(point_id,stop_id02,listfour);
        			listthree.addAll(listfour);
        		} catch (SQLException e) {
        			// TODO Auto-generated catch block
        			e.printStackTrace();
        		}finally {
        		   	 mysql.close(rs, s, conn);
        	   	}	
        		if(listone.size()>listthree.size())       //�жϳ���
        		{
        			list02.addAll(listthree);
        		}
        		else
        		{
        			list02.addAll(listone);
        		}	
        	}
        }
        else if(point.size()==0){
        	//list02.clear();
        	list02=null;
        }
    	return list02;
    }    
    //�󻻳����·��      ����2��
    public static List<String> change02(int line_id01,int line_id02,int stop_id01,int stop_id02,List<String> list03)
    {
    	String sql01="select max(stop_id) max,stop_name from stop where `change`>0 and line_id='"+line_id01+"'"
    			+ "and stop_id in (select max(stop_id) from stop where `change`>0 and line_id='"
    					+ line_id01+"' and stop_id <'"+stop_id01+"')";     //����ʼվ�������תվ
    	String sql02="select min(stop_id) min,stop_name from stop where `change`>0 and line_id='"+line_id01+"'"
    			+ "and stop_id in (select min(stop_id) from stop where `change`>0 and line_id='"
				+ line_id01+"' and stop_id >'"+stop_id01+"')";     //����ʼվ�������תվ
    	Connection conn=mysql.getconn();
    	String sql03;
    	Statement s01=null,s02=null;
   	    ResultSet rs01=null,rs02=null;
   	    List<String> one=new ArrayList<>();
   	    List<String> two=new ArrayList<>();
   	    List<String> three=new ArrayList<>();
      	List<String> four=new ArrayList<>();
   	    int id01=0,id02=0,lineid02=0;     //��һ����תվ��վ��
   	    int a=0;
   	    int b=0;
   	    String name01=null;//��һ����תվ��վ��
   	    try {
   	    	s01=conn.createStatement();
   	    	s02=conn.createStatement();
			rs01=s01.executeQuery(sql01);
			rs02=s02.executeQuery(sql02);
			while(rs01.next()) {
				if(rs01.getString("stop_name")!=null)
					a++;
			}
			while(rs02.next()) {
				if(rs02.getString("stop_name")!=null)
					b++;
			}
			rs01=s01.executeQuery(sql01);
			rs02=s02.executeQuery(sql02);
			if(a==0&&b!=0)
			{
				while(rs02.next())
				{
					id01=rs02.getInt("min");
					name01=rs02.getString("stop_name");
				}
				stright03(stop_id01,id01,three);
				sql03="select stop_id,`change` from stop where stop_name='"+name01+"'and stop_id<>'"+id01+"'";
			    rs02=s02.executeQuery(sql03);
			    while(rs02.next())
			    {
			    	id02=rs02.getInt("stop_id");
			    	lineid02=id02/100;
			    }
			    if(lineid02==line_id02) {
			    	stright01(id02,stop_id02,four);
			    }
			    else 
			    	{
			    	change01(lineid02,line_id02,id02,stop_id02,four);
			    	}
			    
			   
			    if(four.size()==0) {
			    	list03=null;
			    }
			    else 
			    {
			    	three.addAll(four);
				    list03.addAll(three);
			    }
			}
			else if(b==0&&a!=0) {
				while(rs01.next())
				{
					id01=rs01.getInt("max");
					name01=rs01.getString("stop_name");
				}
				stright03(stop_id01,id01,one);
				sql03="select stop_id,`change` from stop where stop_name='"+name01+"'and stop_id<>'"+id01+"'";
			    rs01=s01.executeQuery(sql03);
			    while(rs01.next())
			    {
			    	id02=rs01.getInt("stop_id");
			    	lineid02=id02/100;
			    }
			    if(lineid02==line_id02)
			    {
			    	stright01(id02,stop_id02,two);
			    }
			    else 
			    	{
			    	    change01(lineid02,line_id02,id02,stop_id02,two);
			    	}
			    if(two.size()==0) {
			    	list03=null;
			    }
			    else 
			    {
			    	one.addAll(two);
				    list03.addAll(one);
			    }
			    
			}
			else if(a!=0&&b!=0)
			{
				while(rs01.next())
				{
					id01=rs01.getInt("max");
					name01=rs01.getString("stop_name");
				}
				stright03(stop_id01,id01,one);
				sql03="select stop_id,`change` from stop where stop_name='"+name01+"'and stop_id<>'"+id01+"'";
			    rs01=s01.executeQuery(sql03);
			    while(rs01.next())
			    {
			    	id02=rs01.getInt("stop_id");
			    	lineid02=id02/100;
			    }
			    if(lineid02==line_id02) 
			    {
			    	stright01(id02,stop_id02,two);
			    	one.addAll(two);
			    }
			    else
			   {
				    List<String> point=new ArrayList<>();
				    point=ifhave(lineid02,line_id02);
				    if(point.size()==0)         //�ж�������תվ���ڵ���һ�������յ�վ���ڵ������޽���
				    {
				    	one.clear();
				    	//one=null;
				    }
				    else
				    {
					    change01(lineid02,line_id02,id02,stop_id02,two);
					    one.addAll(two);
				    }
			 }
			    
			    while(rs02.next())
				{
					id01=rs02.getInt("min");
					name01=rs02.getString("stop_name");
				}
				stright03(stop_id01,id01,three);
				sql03="select stop_id,`change` from stop where stop_name='"+name01+"'and stop_id<>'"+id01+"'";
			    rs02=s02.executeQuery(sql03);
			    while(rs02.next())
			    {
			    	id02=rs02.getInt("stop_id");
			    	lineid02=id02/100;
			    }
			    if(lineid02==line_id02) 
			    {
			    	stright01(id02,stop_id02,four);
			    	three.addAll(four);
			    }
			    else
			    	{
				    	List<String> point=new ArrayList<>();
					    point=ifhave(lineid02,line_id02);
					    if(point.size()==0) 				//�ж�������תվ���ڵ���һ�������յ�վ���ڵ������޽���
					    {
					    	three.clear();
					        //three=null;
					    }
					    else
					    {
					    	change01(lineid02,line_id02,id02,stop_id02,four);
						    three.addAll(four);
					    }
			    	}
			   /* if((one==null)||(one.size()>three.size())||(one.size()==three.size()))
			    {
			    	list03.addAll(three);
			    }
			    else if((three==null)||(three.size()>one.size()))
			    {
			    	list03.addAll(one);
			    }*/
			    if(one.size()!=0&&three.size()!=0) {
			   		 if(one.size()>three.size())list03.addAll(three);
			   		 else list03.addAll(one);
			   	 }
			   	 else if(one.size()!=0&&three.size()==0) {
			   		list03.addAll(one);
			   	 }
			   	 else if(one.size()==0&&three.size()!=0)
			   	 {
			   		list03.addAll(three);
			   	 }
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return list03;
    }
    //������ͨ��֮��ıȽ�·�̱Ƚϴ�С������һ���뻻������·���ıȽ�
    public static List<String> min01(int line_id01,int line_id02,int a,int c,List<String> list02)
    {
    	List<String> list_01=new ArrayList<>();
    	List<String> list_02=new ArrayList<>();
    	List<String> list_03=new ArrayList<>();
    	List<String> list_04=new ArrayList<>();
    	list_01=change01(line_id01,line_id02,a,c,list_03);
    	list_02=change02(line_id01,line_id02,a,c,list_04);
    	if(list_01==null&&list_02==null)
    	{
    		list02=null;
    	}
    	else
    	{
    		if(list_01==null)    
        	{
        		list02.addAll(list_02);
        	}
        	else if(list_01.size()<list_02.size())
        	{
        		list02.addAll(list_01);
        	}
        	else
        	{
        		list02.addAll(list_02);
        	}
    	}
    	
    	return list02;
    }
    
    //bijiao  ��תվ����ͨվ�Ķ���·���ıȽ�
    public static List<String> min02(int line_id01,int line_id02,int line_id03,int stop_id01,int stop_id02,int stop_id03,List<String> list02) 
    {                     //��ʼ���������                               //�յ�վ����·��
    	List<String> listone=new ArrayList<>();
    	List<String> listtwo=new ArrayList<>();
    	List<String> listthree=new ArrayList<>();
    	List<String> listfour=new ArrayList<>();
    	listthree=min01(line_id01,line_id03,stop_id01,stop_id03,listone);
    	listfour=min01(line_id02,line_id03,stop_id02,stop_id03,listtwo);
    	if(listthree==null)
    	{
    		list02.addAll(listfour);
    	}
    	else if(listfour==null) 
    	{
    		list02.addAll(listthree);
    	}
    	else
    	{
    		if(listthree.size()>listfour.size())
        	{
        		list02.addAll(listfour);
        	}
        	else
        	{
        		list02.addAll(listthree);
        	}
    	}
    	
		return list02;
    }
   //����list����Ƚϣ�����������
	public static List<String>min03(List<String>list1,List<String>list2,List<String>list3)
    {       
    	if((list1==null&&list2!=null)||(list1.size()>=list2.size()))
    		{
    			list3.addAll(list2);
    		}
    	else if((list2==null&&list1!=null)||(list1.size()<list2.size()))
		{
    		list3.addAll(list1);
		}
    	else if(list1==null&&list2==null)
    	{
    		list3=null;
    	}
		return list3;
    	
    }

    // 
    public static List<String> search02(List<String> list01)
    {
    	List<String> list02=new ArrayList<>();
    	subway subway=null;
    	int a=Integer.valueOf(list01.get(0));//�ַ���ת��Ϊ��������    վ��վ��
    	int b=Integer.valueOf(list01.get(1));//�ַ���ת��Ϊ��������   վ��վ��
    	int c=Integer.valueOf(list01.get(2));//�ַ���ת��Ϊ��������    վ��վ��
    	int d=Integer.valueOf(list01.get(3));//�ַ���ת��Ϊ��������   վ��վ��
    	if(b==0&&d==0)	 				//��վ����Ϊ����    �����������һ�����ϣ���������
    	{
    		int line_id01=a/100;//��ʼվ���ڵ���·��		��·��
        	int line_id02=c/100;//�յ�վ���ڵ���·��		��·��
        	if(line_id01==line_id02)            //���һ������
        	{
        		stright01(a,c,list02);           //����ֱ�ﺯ��
        	}
        	else 								//��������
        	{
        		min01(line_id01,line_id02,a,c,list02);
        	}
    	}
    	else if(b!=0&&d==0)               //��ʼվΪ��תվ���յ�վΪ��ͨվ
    	{
    		int line_id01=a/100;//��ʼվ���ڵ���·��		��·��
        	int line_id02=b/100;
    		int line_id03=c/100;//�յ�վ���ڵ���·��		��·��
    		if(line_id01==line_id03) 
    		{
    			stright01(a,c,list02);
    		}
    		else if(line_id02==line_id03)
    		{
    			stright01(b,c,list02);
    		}
    		else if(line_id01!=line_id03&&line_id02!=line_id03) 
    		{
    			min02(line_id01,line_id02,line_id03,a,b,c,list02);
    		}

    	}
    	else if(b==0&&d!=0)				//��ʼվΪ��ͨվ���յ�վΪ��תվ
    	{
    		int line_id01=a/100;//��ʼվ���ڵ���·��		��·��
        	int line_id02=c/100;
    		int line_id03=d/100;//�յ�վ���ڵ���·��		��·��
    		if(line_id01==line_id02) 
    		{
    			stright01(a,c,list02);
    		}
    		else if(line_id01==line_id03)
    		{
    			stright01(a,d,list02);
    		}
    		else if(line_id01!=line_id02&&line_id01!=line_id03) 
    		{   List<String> List=new ArrayList<>();
    		    min02(line_id02,line_id03,line_id01,c,d,a,List);
    			for(int i=(List.size()-1);i>=0;i--)
    			{
    				list02.add(List.get(i));
    			}
    		}
    	}
    	else if(b!=0&&d!=0)//������תվ
    	{
    		int line_id01=a/100;//��ʼվ���ڵ���·��		��·��
        	int line_id02=b/100;
    		int line_id03=c/100;//�յ�վ���ڵ���·��		��·��
    		int line_id04=d/100;
    		//������תվ��һ����
    		if(line_id01==line_id03&&line_id02!=line_id04)
    		{
    			stright01(a,c,list02);
    		}
    		if(line_id01==line_id04&&line_id02!=line_id03)
    		{
    			stright01(a,d,list02);
    		}
    		if(line_id02==line_id03&&line_id01!=line_id04)
    		{
    			stright01(b,c,list02);
    		}
    		if(line_id02==line_id04&&line_id01!=line_id03)
    		{
    			stright01(b,d,list02);
    		}
    		if(line_id01==line_id03&&line_id02==line_id04)
    		{
    			List<String> List1=new ArrayList<>();
    			List<String> List2=new ArrayList<>();
    			stright01(a,c,List1);
    			stright01(b,d,List2);
    			if(List1.size()<List2.size()) 
    			{
    				list02.addAll(List1);
    			}
    			else list02.addAll(List2);
    		}
    		if(line_id01==line_id04&&line_id02==line_id03)
    		{
    			List<String> List1=new ArrayList<>();
    			List<String> List2=new ArrayList<>();
    			stright01(a,d,List1);
    			stright01(b,c,List2);
    			if(List1.size()<List2.size()) 
    			{
    				list02.addAll(List1);
    			}
    			else list02.addAll(List2);
    		}
    		//������תվ���ڵ������߾�����ͬ
    		if((line_id01!=line_id03)&&(line_id01!=line_id04)&&(line_id02!=line_id03)&&(line_id02!=line_id04))
    		{	
    			List<String> List1=new ArrayList<>();
    			List<String> List2=new ArrayList<>();
    			List<String> List3=new ArrayList<>();
    			List<String> List4=new ArrayList<>();
		        List<String> List_01=new ArrayList<>();
				List<String> List_02=new ArrayList<>();
				min02(line_id01,line_id02,line_id03,a,b,c,List1);
				min02(line_id01,line_id02,line_id04,a,b,d,List2);
				min03(List1,List2,list02);
				
    			/*change01(line_id01,line_id03,a,c,List1);
    			change01(line_id02,line_id03,b,c,List2);
    			change01(line_id01,line_id04,a,d,List3);
    			change01(line_id02,line_id04,b,d,List4);
    			for(int i=0;i<List1.size();i++) {
    				System.out.println(List1.get(i)+"1");
    			}
for(int i=0;i<List2.size();i++) {
	System.out.println(List2.get(i)+"2");
    			}
for(int i=0;i<List3.size();i++) {
	System.out.println(List3.get(i)+"3");
}
for(int i=0;i<List4.size();i++) {
	System.out.println(List4.get(i)+"4");
}
    			min03(List1,List2,List_01);
    			min03(List3,List_01,List_02);
    			min03(List4,List_02,list02);*/
    			}
    		}
    	return list02;
    }

}
