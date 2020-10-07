<%--
  Created by IntelliJ IDEA.
  User: 吉俊烁
  Date: 2020/10/1
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<body>
<form action="/doadd" method="post">
    <table width="500px" align="center">
        <tr>
            <td colspan="2" align="center" style="color: red;">添加人员</td>
        </tr>
        <tr>
            <td>姓名:</td>
            <td><input type="text" name="name"/><span style="color: red">*</span></td>
        </tr>
        <tr>
            <td>性别:</td>
            <td>
                <select name="sex">
                    <option value="">请选择</option>
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
                <span style="color: red">*</span>
            </td>

        </tr>
        <tr>
            <td>年龄:</td>
            <td><input type="text" name="age"/><span style="color: red">*</span></td>
        </tr>
        <tr>
            <td>等级:</td>
            <td>
                <select name="rank">
                    <option value="">请选择</option>
                    <option value="1级">1级</option>
                    <option value="2级">2级</option>
                    <option value="3级">3级</option>
                    <option value="4级">4级</option>
                    <option value="5级">5级</option>
                </select>
                <span style="color: red">*</span>
            </td>
        </tr>
        <tr>
            <td>部门:</td>
            <td>
                <select name="department">
                    <option value="">请选择</option>
                    <option value="支持部">支持部</option>
                    <option value="开发部">开发部</option>
                    <option value="工程质量部">工程质量部</option>
                </select>
                <span style="color: red">*</span>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="提交"/></td>
        </tr>

    </table>
</form>
</body>
</html>
<script type="text/javascript">
    $("tr:even").css("background-color", "rgb(102,254,255)");
    $("tr:odd").css("background-color", "rgb(0,224,0)");
    $("form").submit(function () {
        var name = $("[name='name']").val();
        var sex = $("[name='sex']").val();
        var age = $("[name='age']").val();
        var rank = $("[name='rank']").val();
        var department = $("[name='department']").val();
        if (name == "") {
            alert("用户名不能为空!");
            return false;
        }
        if (sex == "") {
            alert("性别不能为空!");
            return false;
        }
        if (age == "") {
            alert("年龄不能为空!");
            return false;
        }
        if (rank == "") {
            alert("等级不能为空!");
            return false;
        }
        if (department == "") {
            alert("部门不能为空!");
            return false;
        }
    })

</script>
