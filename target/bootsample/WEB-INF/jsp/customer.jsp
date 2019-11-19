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
    <link type="text/css" href="static/assets/css/style.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
</head>
<body>
<%@include file="navbar.jsp"%>
            <c:choose>
                <c:when test="${mode == 'MODE_HOME'}">
                    <div class="container" id="homeDiv">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="static\bank\bank1.jpg" class="d-block w-100" alt="..."></a>
                                </div>
                                <div class="carousel-item">
                                    <img src="static\bank\bank2.jpg" class="d-block w-100" alt="...">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
                               data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button"
                               data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                            <%--            <div class="jumbotron text-center">--%>
                            <%--                <h1>Welcome to Task Manager</h1>--%>
                            <%--            </div>--%>
                    </div>
                </c:when>
                <c:when test="${mode == 'MODE_NASABAH'|| mode=='MODE_UPDATE'}">
                    <div class="span9">
                        <div class="content">
                            <div class="module">
                                <div class="module-head">
                                    <h3>Input Data Nasabah</h3>
                                </div>
                                <div class="module-body">
                                    <form class="form-horizontal row-fluid" name="inputnasabah" id="inputnasabah"
                                          method="POST" action="/save-nasabah">
                                        <div class="form-group">
                                            <div class="control-group">
                                                <input type="hidden" name="idnasabah" value="${nasabah.idnasabah}"
                                                       class="span8">
                                                <div class="form-group">
                                                    <label class="control-label">Nama</label>
                                                    <div class="controls">
                                                        <input required type="text" placeholder="Masukan nama"
                                                               name="namanasabah" type="namanasabah" id="namanasabah"
                                                               value="${nasabah.namanasabah}" class="span8">
                                                    </div>
                                                    <br>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label">No Ktp</label>
                                                    <div class="controls">
                                                        <input required type="text" crequired type="text"
                                                               placeholder="Masukan no ktp" name="noktp" type="noktp"
                                                               id="noktp"
                                                               value="${nasabah.noktp}" class="span8">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <label class="control-label">Alamat</label>
                                                    <div class="controls">
                                                    <textarea required class="span8" rows="5"
                                                              placeholder="Masukan alamat" name="alamat" type="alamat"
                                                              id="alamat">${nasabah.alamat}</textarea>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <label class="control-label">Tempat Lahir</label>
                                                    <div class="controls">
                                                        <input required type="text" placeholder="Masukan tempat lahir"
                                                               name="tmptlahir" type="tmptlahir" id="tmptlahir"
                                                               value="${nasabah.tmptlahir}" class="span8">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <label class="control-label">Tanggal Lahir</label>
                                                    <div class="controls">
                                                        <input input required type="date"
                                                               placeholder="Masukan tanggal lahir" name="tgllahir"
                                                               value="${nasabah.tgllahir}" class="span8">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <label class="control-label">Nama Ibu Kandung</label>
                                                    <div class="controls">
                                                        <input required type="text"
                                                               placeholder="Masukan nama ibu kandung"
                                                               name="namaibu" type="namaibu"
                                                               id="namaibu" value="${nasabah.namaibu}" class="span8">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <label class="control-label">Jenis Kelamin</label>
                                                    <div class="controls">
                                                        <label class="radio inline">
                                                            <input required type="radio" name="jeniskelamin"
                                                                   value="laki-laki">
                                                            Lakilaki</label>
                                                        <label class="radio inline">
                                                            <input required type="radio" name="jeniskelamin"
                                                                   value="Perempuan">
                                                            Perempuan</label><br>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <label class="control-label">No. Handphone</label>
                                                    <div class="controls">
                                                        <input required type="text"
                                                               placeholder="0123456789"
                                                               name="nohp" type="nohp"
                                                               id="nohp" value="${nasabah.nohp}" class="span8">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <div class="controls">
                                                        <button type="submit" class="btn btn-success">Save</button>
                                                    </div>
                                                </div>
                                                <br>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:when>
                <c:when test="${mode == 'MODE_ACCOUNT'}">
                    <div class="span9">
                        <div class="content">
                            <div class="module">
                                <div class="module-head">
                                    <h3>Input Data Akun</h3>
                                </div>
                                <div class="module-body">
                                    <form class="form-horizontal row-fluid" method="POST" action="/save-account">
                                        <input type="hidden" name="norek" value="${account.norek}"/>
                                        <div class="control-group">
                                            <label class="control-label">Nama Nasabah</label>
                                            <div class="controls">
                                                <select name="idnasabah" tabindex="1" data-placeholder="Pilih Nasabah"
                                                        class="span8">
                                                    <option value="">Pilih Nasabah</option>
                                                    <%
                                                        try {
                                                            String Query = "select * from md_nasabah";
                                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bank?useSSL=false", "root", "");
                                                            Statement stm = conn.createStatement();
                                                            ResultSet rs = stm.executeQuery(Query);
                                                            while (rs.next()) {
                                                    %>
                                                    <option value="<%=rs.getInt("idnasabah")%>"><%=rs.getString("namanasabah")%>
                                                    </option>
                                                    <%
                                                            }
                                                        } catch (Exception ex) {
                                                            ex.printStackTrace();
                                                            out.println("Error" + ex.getMessage());
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label class="control-label">Saldo</label>
                                            <div class="controls">
                                                <input required type="text" placeholder="Masukan jumlah saldo"
                                                       name="saldo"
                                                       value="${account.saldo}" class="span8">
                                            </div>
                                        </div>
                                        <br>
<%--                                        <div class="form-group">--%>
<%--                                            <div class="controls">--%>
<%--                                                <div class="alert alert-success">--%>
<%--                                                    <button type="submit" value="Save" class="close" data-dismiss="alert">×</button>--%>
<%--                                                    <strong>Well done!</strong> Data Saved--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
                                        <div class="form-group">
                                            <div class="controls">
                                                <button type="submit" class="btn btn-success">Save</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:when>

                <c:when test="${mode == 'MODE_CUSTOMER'}">
                    <div class="span9">
                        <div class="content col-sm-6">
                            <div class="module">
                                <div class="module-head">
                                    <h3>Data Nasabah</h3>
                                </div>
                                <div class="module-body table">
                                    <table cellpadding="0" cellspacing="0" border="0"
                                           class="datatable-1 table table-bordered table-striped display"
                                           width="100%">
                                        <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Nama Nasabah</th>
                                            <th>Alamat</th>
                                            <th>No handphone</th>
                                            <th>View</th>
                                            <th>Update</th>
                                            <th>Delete</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <% int i = 1;%>
                                        <c:forEach var="nasabah" items="${nasabahs}">
                                            <tr>
                                                <td><%= i%><%i++;%></td>
                                                <td>${nasabah.namanasabah}</td>
                                                <td>${nasabah.alamat}</td>
                                                <td>${nasabah.nohp}</td>
                                                <td><a href="/nasabah-view?idnasabah=${nasabah.idnasabah}" class="btn btn-mini btn-info icon-eye-open" title="lihat data"></a></td>
                                                <td><a href="/update-nasabah?idnasabah=${nasabah.idnasabah}" class="btn btn-small btn-primary icon-pencil" title="edit data"></a></td>
                                                <td><a  href="/delete-nasabah?idnasabah=${nasabah.idnasabah}" class="btn btn-small btn-danger icon-trash" title="hapus data"></a></td>
                                            </tr>

                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div><!--/.module-->

                            <br/>

                        </div><!--/.content-->
                    </div>
                    <!--/.span9-->
                </c:when>
                <c:when test="${mode == 'MODE_NASABAHVIEW'}">
                    <div class="span9">
                        <div class="content">
                            <div class="module">
                                <div class="module-head">
                                    <h3>Data Nasabah</h3>
                                </div>
                                <div class="module-body table">
                                    <table>
                                        <tr class="table100-head">
                                            <th class="column1" style="color: black; padding-right: 50px">Nama</th>
                                            <td class="column4">${nasabah.namanasabah}</td>
                                        </tr>
                                        <tr class="table100-head">
                                            <th class="column1" style="color: black; padding-right: 50px">No. KTP</th>
                                            <td class="column4">${nasabah.noktp}</td>
                                        </tr>
                                        <tr class="table100-head">
                                            <th class="column1" style="color: black; padding-right: 50px">Alamat</th>
                                            <td class="column4">${nasabah.alamat}</td>
                                        </tr>
                                        <tr class="table100-head">
                                            <th class="column1" style="color: black; padding-right: 50px">Tempat Lahir
                                            </th>
                                            <td class="column4">${nasabah.tmptlahir}</td>
                                        </tr>
                                        <tr class="table100-head">
                                            <th class="column1" style="color: black; padding-right: 50px">Tanggal
                                                Lahir
                                            </th>
                                            <td class="column4">${nasabah.tgllahir}</td>
                                        </tr>
                                        <tr class="table100-head">
                                            <th class="column1" style="color: black; padding-right: 50px">Nama Ibu</th>
                                            <td class="column4">${nasabah.namaibu}</td>
                                        </tr>
                                        <tr class="table100-head">
                                            <th class="column1" style="color: black; padding-right: 50px">Jenis
                                                Kelamin
                                            </th>
                                            <td class="column4">${nasabah.jeniskelamin}</td>
                                        </tr>
                                        <tr class="table100-head">
                                            <th class="column1" style="color: black; padding-right: 50px">No.
                                                Handphone
                                            </th>
                                            <td class="column4">${nasabah.nohp}</td>
                                        </tr>
                                    </table>

                                </div>

                            </div><!--/.module-->
                        </div><!--/.content-->

                    <!--/.span9-->

                        <div class="content">
                            <div class="module">
                                <div class="module-head">
                                    <h3>Data Nasabah</h3>
                                </div>

                                <div class="module-body table">
                                    <table>
                                        <tr class="table100-head">
                                            <th class="column1" style="color: black; padding-right: 50px">No. Rekening
                                            </th>
                                            <td class="column4">${account.norek}</td>
                                        </tr>
                                        <tr class="table100-head">
                                            <th class="column1" style="color: black; padding-right: 50px">Jumlah Saldo
                                            </th>
                                            <td class="column4">Rp. ${account.saldo},-</td>
                                        </tr>
                                    </table>
                                        <%--                                    <table cellpadding="0" cellspacing="0" border="0"--%>
                                        <%--                                           class="table"--%>
                                        <%--                                           width="100%">--%>
                                        <%--                                        <thead>--%>
                                        <%--                                        <tr>--%>
                                        <%--                                            <th>no. rek</th>--%>
                                        <%--                                                 <th>id. nasabah</th>--%>
                                        <%--                                                   <th>saldo</th>--%>
                                        <%--                                        </tr>--%>
                                        <%--                                        </thead>--%>
                                        <%--                                        <tbody>--%>
                                        <%--                                            <tr>--%>
                                        <%--                                                <td>${account.norek}</td>--%>
                                        <%--                                                    <td>${account.idnasabah}</td>--%>
                                        <%--                                                   <td>${account.saldo}</td>--%>
                                        <%--                                            </tr>--%>
                                        <%--                                        </tbody>--%>
                                        <%--                                    </table>--%>
                                </div>
                            </div><!--/.module-->

                            <br/>

                        </div><!--/.content-->
                    </div>
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