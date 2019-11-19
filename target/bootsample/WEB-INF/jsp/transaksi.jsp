<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link type="text/css" href="static/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="static/assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link type="text/css" href="static/assets/css/theme.css" rel="stylesheet">
    <link type="text/css" href="static/assets/images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
</head>
<body>
<%@include file="navbar.jsp"%>
            <c:choose>
                <c:when test="${mode == 'MODE_HOME'}">
                    <div class="span9">
            <div><H1><text-center>Welcome To PJI Bank</text-center></H1></div>
                    <img src="static/bank/bank1.jpg" class="img-thumbnail" alt="">
                            <p> <strong>PJI Bank, berdiri sejak tahun 1996 adalah jaringan bank dan grup jasa keuangan terbesar di Asia Tenggara,
                                dan beroperasi sebagai perbankan penting di Indonesia, Malaysia, dan Singapura.</strong></p>
                    </div>

                </div>
                </c:when>
                <c:when test="${mode == 'MODE_DEPOSIT'}">
                    <div class="span9">
                        <div class="content">
                            <div class="module">
                                <div class="module-head">
                                    <h3>Setor</h3>
                                </div>
                                <div class="module-body">
                                    <form class="form-horizontal row-fluid" method="POST" action="save-deposit">
                                        <div class="form-group">
                                            <div class="control-group">
                                                <input type="hidden" name="idtrx" value="${deposit.idtrx}"/>
                                                <div class="control-group">
                                                    <label class="control-label">No Rekening</label>
                                                    <div class="controls">
                                                        <select required name="norek" class="span8">
                                                            <option value="">Pilih Norekening</option>
                                                            <%
                                                                try
                                                                {
                                                                    String Query="select * from md_account";
                                                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                                                    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/bank?useSSL=false","root","");
                                                                    Statement stm=conn.createStatement();
                                                                    ResultSet rs=stm.executeQuery(Query);
                                                                    while(rs.next())
                                                                    {
                                                            %>
                                                            <option value="<%=rs.getInt("norek")%>"><%=rs.getInt("norek")%>
                                                            </option>
                                                            <%
                                                                    }
                                                                }
                                                                catch (Exception ex)
                                                                {
                                                                    ex.printStackTrace();
                                                                    out.println("Error"+ex.getMessage());
                                                                }
                                                            %>
                                                        </select>
                                                    </div>
                                                </div><br>
                                                <input type="hidden" name="jnstrx" value="Deposit"/>
                                                <div class="form-group">
                                                    <label class="control-label" >Jumlah Setor</label>
                                                    <div class="controls">
                                                        <input required placeholder="Masukan jumlah setor" type="text" class="form-control" name="jmltrx" value="${deposit.jmltrx}" class="span8">
                                                    </div>
                                                </div><br>
                                                <div class="form-group">
                                                    <div class="controls">
                                                        <button type="submit" class="btn btn-success">Save</button>
                                                    </div>
                                                </div><br>
                                            </div>
                                        </div>
                                    </form></div>
                            </div></div></div>
                </c:when>
                <c:when test="${mode == 'MODE_WITHDRAW'}">
                    <div class="span9">
                        <div class="content">
                            <div class="module">
                                <div class="module-head">
                                    <h3>Tarik</h3>
                                </div>
                                <div class="module-body">
                                    <form class="form-horizontal row-fluid" method="POST" action="save-withdraw">
                                        <div class="form-group">
                                            <div class="control-group">
                                                <input type="hidden" name="idtrx" value="${withdraw.idtrx}"/>
                                                <div class="control-group">
                                                    <label class="control-label">No Rekening</label>
                                                    <div class="controls">
                                                        <select required name="norek" class="span8">
                                                            <option value="">Pilih Norekening</option>

                                                            <%
                                                                try
                                                                {
                                                                    String Query="select * from md_account";
                                                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                                                    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/bank?useSSL=false","root","");
                                                                    Statement stm=conn.createStatement();
                                                                    ResultSet rs=stm.executeQuery(Query);
                                                                    while(rs.next())
                                                                    {
                                                            %>
                                                            <option value="<%=rs.getInt("norek")%>"><%=rs.getInt("norek")%>
                                                            </option>
                                                            <%
                                                                    }
                                                                }
                                                                catch (Exception ex)
                                                                {
                                                                    ex.printStackTrace();
                                                                    out.println("Error"+ex.getMessage());
                                                                }
                                                            %>
                                                        </select>
                                                    </div>
                                                </div><br>
                                                <input type="hidden" name="jnstrx" value="Withdraw"/>
                                                <div class="form-group">
                                                    <label class="control-label" >Jumlah Tarik</label>
                                                    <div class="controls">
                                                        <input required placeholder="Masukan jumlah tarik" type="text" class="form-control" name="jmltrx" value="${withdraw.jmltrx}" class="span8">
                                                    </div>
                                                </div><br>
                                                <div class="form-group">
                                                    <div class="controls">
                                                        <button type="submit" class="btn btn-success">Save</button>
                                                    </div>
                                                </div><br>
                                            </div>
                                        </div>
                                    </form></div>
                            </div></div></div>
                </c:when>
                <c:when test="${mode == 'MODE_TRANSFER'}">
                    <div class="span9">
                        <div class="content">
                            <div class="module">
                                <div class="module-head">
                                    <h3>Transfer</h3>
                                </div>
                                <div class="module-body">
                                    <form class="form-horizontal row-fluid" method="POST" action="save-transfer">
                                        <div class="form-group">
                                            <div class="control-group">
                                                <input type="hidden" name="idtrx" value="${transfer.idtrx}"/>
                                                <div class="control-group">
                                                    <label class="control-label">No Rekening Pengirim</label>
                                                    <div class="controls">
                                                        <select required name="norek" class="span8">
                                                            <option value="">Pilih Norekening</option>

                                                            <%
                                                                try
                                                                {
                                                                    String Query="select * from md_account";
                                                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                                                    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/bank?useSSL=false","root","");
                                                                    Statement stm=conn.createStatement();
                                                                    ResultSet rs=stm.executeQuery(Query);
                                                                    while(rs.next())
                                                                    {
                                                            %>
                                                            <option value="<%=rs.getInt("norek")%>"><%=rs.getInt("norek")%>
                                                            </option>
                                                            <%
                                                                    }
                                                                }
                                                                catch (Exception ex)
                                                                {
                                                                    ex.printStackTrace();
                                                                    out.println("Error"+ex.getMessage());
                                                                }
                                                            %>
                                                        </select>
                                                    </div>
                                                </div><br>

                                                <div class="control-group">
                                                    <input type="hidden" name="idtrx" value="${transfer.idtrx}"/>
                                                    <div class="control-group">
                                                        <label class="control-label">No Rekening Penerima</label>
                                                        <div class="controls">
                                                            <select required name="norek2" class="span8">
                                                                <option value="">Pilih Norekening</option>

                                                                <%
                                                                    try
                                                                    {
                                                                        String Query="select * from md_account";
                                                                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                                                                        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/bank?useSSL=false","root","");
                                                                        Statement stm=conn.createStatement();
                                                                        ResultSet rs=stm.executeQuery(Query);
                                                                        while(rs.next())
                                                                        {
                                                                %>
                                                                <option value="<%=rs.getInt("norek")%>"><%=rs.getInt("norek")%>
                                                                </option>
                                                                <%
                                                                        }
                                                                    }
                                                                    catch (Exception ex)
                                                                    {
                                                                        ex.printStackTrace();
                                                                        out.println("Error"+ex.getMessage());
                                                                    }
                                                                %>
                                                            </select>
                                                        </div>
                                                    </div><br>
                                                    <input type="hidden" name="jnstrx" value="Transfer"/>
                                                    <div class="form-group">
                                                        <label class="control-label" >Jumlah Transfer</label>
                                                        <div class="controls">
                                                            <input required placeholder="Masukan jumlah transfer" type="text" class="form-control" name="jmltrx" value="${transfer.jmltrx}" class="span8">
                                                        </div>
                                                    </div><br>
                                                    <div class="form-group">
                                                        <div class="controls">
                                                            <button type="submit" class="btn btn-success">Save</button>
                                                        </div>
                                                    </div><br>
                                                </div>
                                            </div></div>
                                    </form></div>
                            </div></div></div>
                </c:when>
            </c:choose>
        </div>
    </div><!--/.container-->
</div><!--/.wrapper-->

<div class="footer">
    <div class="container">
        <b class="copyright">&copy; 2019 Pji Bank</b>
    </div>
</div>

<script src="static/assets/scripts/jquery-1.9.1.min.js"></script>
<script src="static/assets/scripts/jquery-ui-1.10.1.custom.min.js"></script>
<script src="static/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="static/assets/scripts/datatables/jquery.dataTables.js"></script>
<script>
    $(document).ready(function () {
        $('.datatable-1').dataTable();
        $('.dataTables_paginate').addClass("btn-group datatable-pagination");
        $('.dataTables_paginate > a').wrapInner('<span />');
        $('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
        $('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
    });
</script>
</body>
</html>