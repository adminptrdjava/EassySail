<%-- 
    Document   : producMp
    Created on : 23 Apr, 2015, 5:36:24 PM
    Author     : Swarnendu
--%>

<%@taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<link href="<c:url value="/resources/GRID/css/demo_page.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/GRID/css/demo_table.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/GRID/css/demo_table_jui.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/GRID/css/jquery-ui-1.8.24.custom.css"/>" rel="stylesheet" />
<script src="<c:url value="/resources/GRID/js/jquery-min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/GRID/js/jquery.dataTables.js"/>" type="text/javascript"></script>



<script type="text/javascript">
    var j = jQuery.noConflict();
    j(document).ready(function () {

        j("#sales").DataTable({
            "sPaginationType": "full_numbers",
            "bJQueryUI": true

        });

    });

</script>

<div >
    
    <td><a href="newProduct.htm" ><span class="btn btn-warning">ADD PRODUCT</span></a><td>
    <td><a href="repProduct.htm" ><span class="btn btn-warning">PRODUCT REPORT</span></a><td>
</div>

<br>
<div class="table-responsive">
    <table id="sales" class="display">
        <thead style="color: brown; ">
        <td>PID</td>
        <td>PRODUCT NAME</td>
        <td>CATAGORY</td>
        <td>AUTHOR</td>
        <td>PUBLISHER</td>
        <td>QUANTITY</td>
        <td>SALE PRICE</td>
        <td>ISBN NO</td>
        <td>RACK NO</td>
        <td style="color: red">DELETE</td>
        <td style="color: green">EDIT</td>
        </thead>
        <c:forEach items="${lst}" var="pd">
            <tr>
                <td><b>${pd.pid}</td>
                <td><b>${pd.pname}</td>
                <td><b>${pd.category}</td>
                <td><b>${pd. author}</td>
                <td><b>${pd.publisher}</td>
                <c:choose>
                    <c:when test="${pd.quantity >= 10}">
                        <td><b>${pd.quantity}</td>
                    </c:when>
                    <c:otherwise>
                        <td><span class="label label-danger"><b>${pd.quantity}</span></td>
                        </c:otherwise>
                    </c:choose>

                <td><b>${pd.sprice}</td>
                <td><b>${pd.isbn}</td>
                <td><b>${pd.rackno}</td>
                <td ><b><a href="delpro.htm?id=${pd.pid}"><span class="fa fa-trash-o"></span></a></td>
                <td ><b><a href="editp.htm?id=${pd.pid}"><span class="fa fa-star"></span></a></td>
            </tr>
        </c:forEach>
    </table>

</div>