<%--
  Created by IntelliJ IDEA.
  User: 吉俊烁
  Date: 2020/10/1
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<body>
<table align="center" width="500px" border="1px">
    <tr>
        <td colspan="7">人员列表</td>
    </tr>
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>等级</td>
        <td>部门</td>
        <td>操作</td>
    </tr>
    <c:forEach var="p" items="${people}">
        <tr name="${p.id}">
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.sex}</td>
            <td>${p.age}</td>
            <td>${p.rank}</td>
            <td>${p.department}</td>
            <td><a href="javascript:void(0)" onclick="del(${p.id})">删除</a></td>
        </tr>
    </c:forEach>
</table>
<p align="center" style="color: red;" id="error">${error}</p>
<p align="center"><input type="button" value="添加人员"/></p>
</body>
</html>
<script type="text/javascript">
    $("tr:even").css("background-color", "rgb(102,254,255)");
    $("tr:odd").css("background-color", "rgb(0,224,0)");
    $("[type='button']").click(function () {
        location.href = "/toadd";
    })

    function del(id) {
        var flag = confirm("确定要删除吗?");
        if (flag == true) {
            $.post("/dodel", {id: id}, function (data) {
                if (data == true) {
                    $("[name='" + id + "']").remove();
                } else {
                    alert("刪除失败");
                }
            }, "json");

        }

    }

</script>
