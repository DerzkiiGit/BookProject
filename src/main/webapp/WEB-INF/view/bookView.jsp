<%--
  Created by IntelliJ IDEA.
  User: SpooN
  Date: 08.10.2017
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:choose>
    <c:when test="${! empty book.author}">
        <c:out value="Edit a User"/>
    </c:when>
    <c:otherwise>
        <c:out value="Add a User"/>
    </c:otherwise>
</c:choose>

<c:url var="addAction" value="/books/save"/>
<form:form method="post" action="${addAction}" commandName="book">
    <table>
        <c:if test="${! empty book.author}">
        <tr>
            <td><form:label path="Id">ID</form:label></td>
            <td><form:input path="Id" readonly="true"/></td>
        </tr>
        </c:if>
        <tr>
            <td><form:label path="title">Title</form:label></td>
            <td><form:input path="title"/></td>
        </tr>
        <tr>
            <td><form:label path="description">Description</form:label></td>
            <td><form:input path="description"/></td>
        </tr>
        <c:choose>
        <c:when test="${ empty book.author}">
        <tr>
            <td><form:label path="author">Author</form:label></td>
            <td><form:input path="author"/></td>
        </tr>
        </c:when>
         <c:otherwise>
             <td><form:hidden path="author"/></td>
         </c:otherwise>
        </c:choose>
        <tr>
            <td><form:label path="isdn">ISDN</form:label></td>
            <td><form:input path="isdn"/></td>
        </tr>
        <tr>
            <td><form:label path="printYear">Year Printed</form:label></td>
            <td><form:input path="printYear"/></td>
        </tr>

        <tr>
            <c:if test="${! empty book.author}">
                <td >
                    <input type = "submit" value = "Edit a Book"/>
                </td>
            </c:if>
            <c:if test="${ empty book.author}">
                <td>
                    <input type="submit" value="Add a Book"/>
                </td>
            </c:if>
        </tr>
    </table>
</form:form>





</body>
</html>
