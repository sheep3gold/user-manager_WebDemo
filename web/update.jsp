<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
    <head>
    	<base href="<%=basePath%>"/>
        <!-- 指定字符集 -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>修改用户</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery-2.1.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
    </head>
    <body>
        <div class="container" style="width: 400px;">
        <h3 style="text-align: center;">修改联系人</h3>
        <form action="UpdateServlet" method="post">
            <input type="hidden" value="${user.id}" id="id" name="id">
          <div class="form-group">
            <label for="name">姓名：</label>
            <input type="text" class="form-control" id="name" name="name"  readonly="readonly" value="${user.name}" />
          </div>

          <div class="form-group">
            <label>性别：</label>
              <input type="radio" name="sex" value="男" <c:if test="${user.sex=='男'}">checked</c:if> />男
                <input type="radio" name="sex" value="女" <c:if test="${user.sex=='女'}">checked</c:if>  />女
          </div>

          <div class="form-group">
            <label for="age">年龄：</label>
            <input type="text" class="form-control" id="age"  name="age" value="${user.age}" />
          </div>

          <div class="form-group">
            <label >籍贯：</label>
             <select name="address" class="form-control" >
                 <option value="广东" <c:if test="${user.address=='广州'}">selected </c:if>>广东</option>
                <option value="广西" <c:if test="${user.address=='广西'}">selected </c:if>>广西</option>
                <option value="湖南" <c:if test="${user.address=='湖南'}">selected </c:if>>湖南</option>
            </select>
          </div>

          <div class="form-group">
            <label >QQ：</label>
            <input type="text" class="form-control" name="qq" placeholder="请输入QQ号码" value="${user.qq}"/>
          </div>

          <div class="form-group">
            <label >Email：</label>
            <input type="text" class="form-control" name="email" placeholder="请输入邮箱地址" value="${user.email}"/>
          </div>

             <div class="form-group" style="text-align: center">
                <input class="btn btn-primary" type="submit" value="提交" />
                <input class="btn btn-default" type="reset" value="重置" />
                <input class="btn btn-default" type="button" value="返回"/>
             </div>
        </form>
        </div>
    </body>
</html>