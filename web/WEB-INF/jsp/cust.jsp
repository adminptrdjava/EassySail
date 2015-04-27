<%-- 
    Document   : cust
    Created on : 23 Apr, 2015, 12:00:03 PM
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


<a href="newcust.htm" >ADD NEW</a>
<table id="sales" class="display">
    <thead style="color: brown; ">
    <td>CID</td>
    <td>TYPE</td>
    <td>DISC</td>
    <td>ACTION</td>
</thead>
<c:forEach items="${lst}" var="cu">
    <tr>
        <td>${cu.cid}</td>
        <td>${cu.ctype}</td>
        <td>${cu.disc}</td>
        <td><a href="delcust?">REMOVE</a>|<a href="#">EDIT</a></td>
    </tr>
    </c:forEach>
</table>