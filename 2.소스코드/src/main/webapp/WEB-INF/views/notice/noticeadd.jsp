<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html>
<html>
<head>
<<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
    <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inline.css" rel="stylesheet">
    <link href="/resources/css/ydhn.css" rel="stylesheet">

    <style>
        
    </style>

    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

    <!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

</head>
<body>
 <%@ include file="/WEB-INF/views/inc/header.jsp" %>
           

         
        

        <hr>
    
    <!-- 목록 -->
    
    <main class="py-md-3 pl-md-5">
      <div class="main-margin" id="main">
        <div class="row ">
          <div class="col-3 bd-sidebar">
            <ul class="nav" style="display: none;">
                <li><h3>책방센터</h3></li>
                <li><a href="/notice.html">공지사항</a></li>
                <li><a>고객문의</a></li>
                <li><a>Q/A</a></li>
                <li><a href="/payment.html">결제창링크~~</a></li>
            </ul>
            <br>
          </div>
          <div class="col-8 main-width">
            <div class="over-wrap">

                <!--   -->
                <h1>Summernote</h1>
                
                <form method="post" action="/notice/noticeaddok.do">
                <input class="form-control form-control-sm" type="text" name="title" placeholder="제목을 작성하세요" aria-label=".form-control-sm example">
                <br>
                    <textarea id="summernote" name="content"></textarea>
                    <input type="hidden" name="memberseq" value="<sec:authentication property="principal.memberseq"/>" >
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
                
                 <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <button class="btn btn-light" type="submit">
                      등록
                    </button>
                    <button class="btn btn-light" type="button">
                        <a href="/notice/notice.do">목록</a>
                    </button>
                    
                  </div>
                  </form>
                
            </div>
          </div>
          <%@ include file="/WEB-INF/views/inc/stickybanner.jsp" %>
        </div>
    </div> 
  </main>
     <%@ include file="/WEB-INF/views/inc/footer.jsp" %>
    
    
    
    <script src="js/jquery-3.6.4.js"></script>
    <script>
        $(document).ready(function () {
            $('#summernote').summernote({
                placeholder: '내용을 작성하세요',
                height: 400,
                maxHeight: 400
            });
        });
    </script>
</body>
</html>






