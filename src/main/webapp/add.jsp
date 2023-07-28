<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- there are totally four jsp tags
       1) scriptlet
       2) declaration
       3) directive
       4) expression -->


<%@ include  file="header.jsp"%>

<%-- derictive tag : all import statements are written here    under directive tag itself we have three tags
 
  @page
  @include
  @taglib

--%>
<%@page  
    import ="java.util.*"
 %>
  
  

<%-- declaration tag  ... all the instance members 
including instance methods and instance variables --%>
<%!  
     int instanceVariable = 9;
%>


<%-- //scirplet tag .. goes inside service method--%>
 <% 
 int i = Integer.parseInt(request.getParameter("num1"));
 int j = Integer.parseInt(request.getParameter("num2"));
 int k = i+j;
 out.print("output: "+k);
 %> 
 
 
 
 <%-- expression tag just outputs the value of the variable --%>
 My favourite number is :
 <%=instanceVariable%>
 
 
 



<%--

built in objects in jsp

 1) request (HttpServletRequest)
 2) response  (HttpServletResponse)
 3) pageContext (PageContext)
 4) out (JspWriter) ~ Printwriter object
 5) session (HttpSession)
 6) application (ServletContext)
 7) config  (Servletconfig)

 --%>
 
 
 <%
    
    pageContext.setAttribute("name","raji",PageContext.SESSION_SCOPE);
    
 %>
 
 
 
 
 
 
 
 
 

</body>
</html>