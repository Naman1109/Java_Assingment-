<%@page import="DAO.userdao" %>
<%
    String email = request.getParameter("email");
    String fname = request.getParameter("fname");
    userdao rd = new userdao();
    int i = rd.delete(email, fname);
    if (i > 0) {
//        session.setAttribute("email", email);
%>
<script>alert("Delete Successfully..!")</script>
<jsp:include page="User_home.jsp"></jsp:include>
<%} else {%>
<script>alert("Error while Deleting ..!")</script>
<jsp:include page="User_home.jsp"></jsp:include>
<%}%>