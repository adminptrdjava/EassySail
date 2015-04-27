<%-- 
    Document   : barcode
    Created on : 23 Apr, 2015, 11:14:13 AM
    Author     : Swarnendu
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fr" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<center>
    <div class="input-group">
        <fr:form action="addbquick.htm" modelAttribute="quick">
            <table class="table table-bordered table-striped">

                <tbody>
                    <tr>
                        <td><b>Barcode Prifix  : </td>
                        <td><input type="text" name="pname" required="required" placeholder="BOOK TITLE"/></td>
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
                        <td><input type="text" name="isbn" required="required" placeholder="ISBN NO"/></td>
                    </tr>

                    <tr>
                        <td style="color: green"><b>CLICK TO SAVE</td>
                        <td><input class="btn-lg" type="submit" value="SAVE"/></td>
                    </tr>
                </tbody>
            </table>
        </fr:form>
        <p style="color: red"><b>*FOR NEW INSERT LEAVE QUANTITY BLANK</p>
    </div>
</center>
