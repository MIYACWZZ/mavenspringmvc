<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
UE.Editor.prototype.getActionUrl = function(action){
	if(action=='uploadimage'){
		return '      ';
	} else if (action=='uploadvideo') {
		return 'http://localhost:8080/utf8-jsp/backend/uploadvideo';
	} else {
		return this._bkGetActionUrl.call(this,action);
	}
}
</script>
<body>
	<form action="save.jsp" method="post" taget="_blank">
		<!-- 加载编辑器的容器 -->
    	<script id="container" name="content" type="text/plain" style="width:900px;height:400px;">
        	输入文章
    	</script>
    	<input type="submit" value="上传文章">
    </form>
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
    
</body>
</html>