<%@page import="java.sql.*"%>
<%@include file="User_home.jsp" %>
<head>
    <link href="Styles/style1.css" rel="stylesheet">

</head>
<body>

    <div id="page">

        <div class="main">
            <div class="#">
                <h2 class="had">List</h2>
                <div class="tablebox">

                    <%
                        String e1 = request.getParameter("email");
                        String f1 = request.getParameter("fname");

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            //			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment_db","root","root");
                            //            Class.forName("com.mysql.cj.jdbc.Driver");
                            String db_ur1 = "jdbc:mysql://localhost:3306/assignment_db";
                            String db_uname = "root";
                            String db_upass = "root";
                            Connection con = DriverManager.getConnection(db_ur1, db_uname, db_upass);
                            Statement st = con.createStatement();

                            ResultSet rs = st.executeQuery("select * from usere where email = '" + e1 + "' and fname = '" + f1 + "'");
                    %>

                    <table border="1" cellpadding="5" cellspacing="1">

                        <tr>
                         
                            <td> First Name</td>
                            <td> Last Name</td>
                            <td> Address</td>
                            <td> City</td>
                            <td> Zip</td>
                            <td> State</td>
                            <td> Country</td>
                            <td> Zip </td>
                            <td> Phone</td>
                        </tr>

                        <%   while (rs.next()) { %>
                        <tr>
                            <% out.println("<td> " + rs.getString(1) + " </td>"); %> 
                            <% out.println("<td> " + rs.getString(2) + " </td>"); %>
                            <% out.println("<td> " + rs.getString(3) + " </td>"); %>
                            <% out.println("<td> " + rs.getString(4) + " </td>"); %>
                            <% out.println("<td> " + rs.getString(5) + " </td>"); %>
                            <% out.println("<td> " + rs.getString(6) + " </td>"); %>
                            <% out.println("<td> " + rs.getString(7) + " </td>"); %>
                            <% out.println("<td> " + rs.getString(8) + " </td>"); %>
                            <% out.println("<td> " + rs.getString(9) + " </td>"); %>
                        </tr>


                        <%

                            }
                            con.close();
                        %>
                    </table>

                    <%
                        } catch (Exception e2) {
                            System.out.println(e2);

                        }
                    %>

                </div>
            </div>
        </div>
    </div>
</body>
</html>
