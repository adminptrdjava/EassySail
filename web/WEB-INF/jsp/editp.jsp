<%-- 
    Document   : editp
    Created on : 24 Apr, 2015, 12:12:43 AM
    Author     : Swarnendu
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fr" %>
<center>
<div class="input-group">
    <fr:form action="updatep.htm" modelAttribute="pd">
        <table class="table table-bordered table-striped">

            <tbody>
                <tr>
                    <td><input hidden name="pid" value="${pd.pid}"/></td>
                </tr>
                <tr>
                    <td><b>PRODUCT NAME  : </td>
                    <td><input type="text" name="pname" value="${pd.pname}" required="required" placeholder="BOOK TITLE"/></td>
                </tr>
                <tr>
                    
                    <td><b>CATAGORY  :</td>
                    <td><select name="category"  >
                            <option>${pd.category}</option>
                            <option >SELECT CATAGORY</option>
                            <c:forEach   items="${lst}" var="cg">

                                <option >${cg.catname}</option>
                            </c:forEach> 
                        </select></td>
                </tr>
                <tr>
                    <td><b>AUTHOR  :</td>
                    <td><input type="text" value="${pd. author}" name="author" required="required" placeholder="AUTHOR"/></td>
                </tr>
                <tr>
                    <td><b>PUBLISHER  :</td>
                    <td><input type="text" value="${pd.publisher}" name="publisher" required="required" placeholder="PUBLISHER"/></td>
                </tr>
                <tr>
                    <td style="color: red"><b>*QUANTITY  :</td>
                    <td><input type="text" name="quantity" value="${pd.quantity}" required="required" placeholder="QUANTITY"/></td>
                </tr>
                <tr>
                    <td><b>SAIL PRICE  :</td>
                    <td><input type="text" name="sprice" value="${pd.sprice}" required="required" placeholder="SAIL PRICE"/></td>
                </tr>
                <tr>
                    <td><b>ISBN-NO  :</td>
                    <td><input type="text" name="isbn" value="${pd.isbn}" required="required" placeholder="ISBN NO"/></td>
                </tr>
                <tr>
                    <td><b>PURCHES PRICE  :</td>
                    <td><input type="text" name="pprice" value="${pd.pprice}" placeholder="PURCHES PRICE"/></td>
                </tr>
                <tr>
                    <td><b>RACK NO  :</td>
                    <td><input type="text" name="rackno" value="${pd.rackno}"  placeholder="RACK NO"/></td>
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