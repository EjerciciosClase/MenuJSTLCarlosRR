<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="es.albarregas.beans.alumno"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplos JSTL</title>
    </head>
    <body>
        <label>Ejemplo de variable</label>
        <c:set var="var1" value="Creada con c:set y mostrada con c:out" scope="request"/>
        <h5><c:out value="${var1}"/></h5> <br/>
        <label>Ejemplo de c:import</label>
        <c:import url="prueba.html"  /><br/>               
        <label>Ejemplo de c:choose</label>
        <c:choose >
            <c:when test="${var1==null}" >
                <h5>Cumple la condicion y entra en el when</h5> 
            </c:when>
            <c:otherwise>
                <h5>Si ninguno de los when cumple la condicion saldria por c:otherwise</h5>
            </c:otherwise>
        </c:choose>
        <label>Ejemplo de c:if</label>
        <c:if test="${var1!=null}">
            <h5>Si la condicion EL se cumple entra en el if</h5><br/>
        </c:if>
        <label>Ejemplo de c:remove</label>
        <c:remove var="var1" scope="request"/>
        <h5><c:out value="${var1}"/></h5><br/>
        <label>Ejemplo de c:url y param</label>
        <c:url value="/ejemplo.html" var="url2" context="/JSP/CORE" >
            <c:param name="cualquiera" value="parametro1"/>
        </c:url>
        <h5><c:out value="${url2}"/></h5><br/>
        <label>Ejemplo de c:forTokens</label>
        <c:forTokens items = "Carlos,David,Alejandro" delims = "," var = "nombresClase">
            <h5><c:out value = "${nombresClase}"/></h5>
        </c:forTokens>
            <label>Ejemplo de c:forEach</label>
        <c:forEach items = "Jesus,Alejandro,Carlos" var = "nombresEach">
            <h5><c:out value = "${nombresEach}"/></h5>
        </c:forEach>
        <c:catch var="var1"/>

    </body>
</html>
