<%-- 
    Document   : addproduct
    Created on : 23 Apr, 2015, 6:21:44 PM
    Author     : Swarnendu
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fr" %>
<center>
<div class="input-group">
    <fr:form action="addnewp.htm" modelAttribute="pd">
        <table class="table table-bordered table-striped">

            <tbody>
                <tr>
                    <td><b>PRODUCT NAME  : </td>
                    <td><input type="text" name="pname" required="required" placeholder="BOOK TITLE"/></td>
                </tr>
                <tr>
                    
                    <td><b>CATAGORY  :</td>
                    <td><select name="category" >
                            <option >SELECT CATAGORY</option>
                            <c:forEach   items="${lst}" var="cg">

                                <option >${cg.catname}</option>
                            </c:forEach> 
                        </select></td>
                </tr>
                <tr>
                    <td><b>AUTHOR  :</td>
                    <td><input type="text" name="author" required="required" placeholder="AUTHOR"/></td>
                </tr>
                <tr>
                    <td><b>PUBLISHER  :</td>
                    <td><input type="text" name="publisher" required="required" placeholder="PUBLISHER"/></td>
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
                    <td><b>PURCHES PRICE  :</td>
                    <td><input type="text" name="pprice"  placeholder="PURCHES PRICE"/></td>
                </tr>
                <tr>
                    <td><b>RACK NO  :</td>
                    <td><input type="text" name="rackno"  placeholder="RACK NO"/></td>
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