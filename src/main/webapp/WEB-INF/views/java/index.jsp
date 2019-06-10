<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="Keywords" content="keywords" />
<meta name="Description" content="description" />
<title>Title</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
<script type="text/javascript">
$(document).ready(function() {
    $('#jdk-install a').click(function() {
        var url = '/java/jdk-install';
        $.getJSON(url, function(data) {
            $('title').empty();
            $('title').append(data.title);
            $("meta[name='Keywords']").attr("content", data.keywords);
            $("meta[name='Description']").attr("content", data.description);
            $('article').empty();
            $('article').append(data.content);
            console.log(data);            
            console.log($("meta[name='Keywords']").attr("content"));
            console.log($("meta[name='Description']").attr("content"));
        });
        return false;
    });
});
</script>
</head>
<body>

<ul>
    <li id="home"><a href="/">Home</a></li>
    <li id="jdk-install"><a href="#">JDK Install</a></li>
</ul>

<article>
content
</article>

</body></html>
