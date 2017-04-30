<%@page import="java.sql.*"%>
<%
  try
   {
    String email=request.getParameter("txtemail");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","anima","anima");
    Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery("select emailid from login where emailid=email");
    int count=0;
    while(rs.next())
     {out.println(rs.getString(1));
      count++;
     }
    if(email.equals("animatiwary002@gmail.com"))
     response.sendRedirect("facultypage.html");
    else if(count>0)
     response.sendRedirect("studentpage.html");
    else
     response.sendRedirect("login.html");
   }
  catch(Exception e)
   {
    System.out.println(e);
   }
%>