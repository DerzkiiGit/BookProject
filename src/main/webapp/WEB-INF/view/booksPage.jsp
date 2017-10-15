<%--
  Created by IntelliJ IDEA.
  User: SpooN
  Date: 08.10.2017
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Books List</title>
</head>
<body>
<c:choose>
    <c:when test="${search ne ''}">
        <c:set var="linkAddition" value="&search=${search}"/>
    </c:when>
    <c:otherwise>
        <c:set var="linkAddition" value=""/>
    </c:otherwise>

</c:choose>
<c:if test="${!empty books}">

    <table>
        <tr>
            <th width="80">ID</th>
            <th width="100">Title</th>
            <th width="180">Description</th>
            <th width="80">Author</th>
            <th width="60">ISDN</th>
            <th width="60">Year Printed</th>
            <th width="40">Is read?</th>
            <th width="40">Read a Book</th>
            <th width="60">EDIT</th>
            <th width="60">DELETE</th>
            <c:forEach var="singleBook" items="${books}">
        <tr>
            <td>${singleBook.id}</td>
            <td>${singleBook.title}</td>
            <td>${singleBook.description}</td>
            <td>${singleBook.author}</td>
            <td>${singleBook.isdn}</td>
            <td>${singleBook.printYear}</td>
            <td>${singleBook.read}</td>
            <td><a href="<c:url value="/books/read/${singleBook.id}?page=${currentPage}${linkAddition}"/>">Read</a></td>
            <td><a href="<c:url value="/books/edit/${singleBook.id}" />"target="_blank" >EDIT</a></td>
            <td><a href="<c:url value="/books/delete/${singleBook.id}?page=${currentPage}${linkAddition}"/>">DELETE</a></td>
        </tr>
        </c:forEach>
    </table>
    <table>
        <tr>
    <c:forEach begin="0" end="${pageCount-1}" varStatus="loop">
        <td><a href="<c:url value="/books?page=${loop.index}${linkAddition}"/>">${loop.index}</a></td>
    </c:forEach>
        </tr>
    </table>

</c:if>

<br/>
<br/>
<br/>
<a href="<c:url value="/books/getForm"/>" target="_blank">Add a Book</a>
<br/>
<br/>
<br/>

<c:out value="Show read or not read books"/>

<form name="Sort By name" action="<c:url value="/books/sort"/>" method="get">
            <label  >
            <input type="radio" name="search"  value="true">Read?
            </label><br/>
             <label  >
            <input type="radio" name="search"  value="false">Not read?
             </label><br/>

                <input type="submit" name="Find" value="Sort">
</form>
<br/>
<c:if test="${search ne ''}">
    <a href="<c:url value="/books"/>">Show all books</a>
</c:if>


</body>
</html>
