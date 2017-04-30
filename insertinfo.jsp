<%@page import="java.sql.*"%>
<%
 String name=request.getParameter("txtname");
 String usn=request.getParameter("txtusn");
 String email=request.getParameter("txtemail");
 int phno=Integer.parseInt(request.getParameter("txtphno"));
 String mname=request.getParameter("txtmname");
 String fname=request.getParameter("txtfname");
 String tadd=request.getParameter("txttadd");
 String padd=request.getParameter("txtpadd");
 String dob=request.getParameter("txtdob");
 String blood=request.getParameter("txtblood");
 int xrollno=Integer.parseInt(request.getParameter("txtxrollno"));
 int xpercent=Integer.parseInt(request.getParameter("txtxpercent"));
 String xboard=request.getParameter("txtxboard");
 int xyear=Integer.parseInt(request.getParameter("txtxyear"));
 int xiirollno=Integer.parseInt(request.getParameter("txtxiirollno"));
 int xiipercent=Integer.parseInt(request.getParameter("txtxiipercent"));
 String xiiboard=request.getParameter("txtxiiboard");
 int xiiyear=Integer.parseInt(request.getParameter("txtxiiyear"));
 String berollno=request.getParameter("txtberollno");
 int bepercent=Integer.parseInt(request.getParameter("txtbepercent"));
 String beboard=request.getParameter("txtbeboard");
 int beyear=Integer.parseInt(request.getParameter("txtbeyear"));
 try
  {
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:8080:xe");
   Statement st1=conn.createStatement();
   int i=st1.executeUpdate("insert into studentpersonal(usn,sname,email,phno,mname,fname,tadd,padd,dob,bloodgroup) values('"+usn+"','"+name+"','"+email+"',"+phno+",'"+mname+"','"+fname+"','"+tadd+"','"+padd+"','"+dob+"','"+blood+"')");
   Statement st2=conn.createStatement();
   int j=st2.executeUpdate("insert into studentacademic(usn,xrollno,xpercent,xboard,xyear,xiirollno,xiipercent,xiiboard,xiiyear,berollno,bepercent,beboard,beyear) values('"+usn+"','"+xrollno+"','"+xpercent+"','"+xboard+"','"+xyear+"',"+xiirollno+","+xiipercent+",'"+xiiboard+"',"+xiiyear+","+berollno+","+bepercent+",'"+beboard+"',"+beyear+")");
   conn.close();
   out.println("Data is successfully inserted into database.");   
 }
 catch(Exception e)
  {
   System.out.println(e);
  }
%>