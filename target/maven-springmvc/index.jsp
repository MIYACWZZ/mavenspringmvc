<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
<form action="save.jsp" method="post" taget="_blank">
    <!-- 加载编辑器的容器 -->
    <script id="container" name="content" type="text/plain">
        初始化内容
    </script>
    <input type="submit" value="提交文章">
    <!-- 配置文件 -->
    <script type="text/javascript" src="ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="ueditor.all.js"></script>
    <!-- 实例化编辑器 -->
    <script type="text/javascript">
        var ue = UE.getEditor('container',{
            toolbars:[['FullScreen','simpleupload' ,'Source','Undo','Redo','Bold','test','indent','italic','underline','formatmatch','blockquote','selectall','horizontal']],
            autoClearinitialContent:true,
            initialFrameHeight:300
        });
    </script>
    <%--<script>--%>
        <%--document.getElementById("container").style.width=900px;--%>
        <%--document.getElementById("container").style.height=400px;--%>
    <%--</script>--%>
</form>

</body>
</html>