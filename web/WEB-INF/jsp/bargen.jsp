<%-- 
    Document   : bargen
    Created on : 24 Apr, 2015, 9:14:48 AM
    Author     : Swarnendu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<title>BARCODE</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fr" %>

<link href="<c:url value="/resources/jsDatePick_ltr.min.css" />" rel="stylesheet" media="all">
<script src="<c:url value="/resources/jsDatePick.min.1.3.js" />"></script>

<script type="text/javascript">
    window.onload = function () {
        // alert("hi");
        new JsDatePick({
            useMode: 2,
            target: "calField",
            dateFormat: "%Y-%m-%d"
                    /*selectedDate:{				This is an example of what the full configuration offers.
                     day:5,						For full documentation about these settings please see the full version of the code.
                     month:9,
                     year:2006
                     },
                     yearsRange:[1978,2020],
                     limitToToday:false,
                     cellColorScheme:"beige",
                     dateFormat:"%m-%d-%Y",
                     imgPath:"/rs/img/",
                     weekStartDay:1*/
        });
    };

</script>

<center>
   
    <div class="input-group">
        <fr:form action="barprocess.htm" modelAttribute="quick">
            <table class="table table-bordered table-striped">

                <tbody>
                    <tr>
                        <td><b>Barcode Prifix  : </td>
                        <td><input type="text" name="bno"  placeholder="BOOK TITLE"/></td>
                    </tr>
                    <tr>

                        <td><b>PRODUCT  :</td>
                        <td><select name="Product" >
                                <option >SELECT PRODUCT</option>
                                <c:forEach   items="${lst}" var="pd">

                                    <option >${pd.pname}</option>
                                </c:forEach> 
                            </select></td>
                    </tr>
                    <tr>
                        <td style="color: red"><b>*QUANTITY  :</td>
                        <td><input type="text" name="quantity" required="required" placeholder="QUANTITY"/></td>
                    </tr>
                    <tr>
                        <td><b>SAIL PRICE  :</td>
                        <td><input type="text" name="sprice" required="required" placeholder="SAIL PRICE"/></td>
                    </tr>
                    <tr>
                        <td><b>ISBN-NO  :</td>
                        <td><input type="text" name="isbn" /></td>
                    </tr>
                    <tr>
                        <td>DATE: </td>
                        <td> <span class="fa fa-calendar"></span><input id="calField" name="date" type="text" data-orientation="left"/></td>
                    </tr>
                    <tr>
                        <td style="color: green"><b>CLICK TO SAVE</td>
                        <td><input class="btn-lg" type="submit" value="SAVE"/></td>
                    </tr>
                </tbody>
            </table>
        </fr:form>
        <p style="color: red"><b>*INSERT ISBN OR YOUR BARCODE</p>
    </div>
</center>
