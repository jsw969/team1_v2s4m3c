<%@ page contentType="text/html; charset=UTF-8" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>Test Page</title>
<link href="../css/style.css" rel='Stylesheet' type='text/css'>
 
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
</head>
<body>
<jsp:include page="/team1_menu/topindex.jsp" flush='false' />

<DIV class='title_line'>알림</DIV>
 
<DIV class='message'>
  <fieldset class='fieldset_basic'>
    <UL>
      <c:choose>
        <c:when test="${param.cnt == 1 }">
          <LI class='li_none'>
            <span class='span_success'>질문을 삭제했습니다.</span>
          </LI>
        </c:when>
        <c:otherwise>
          <LI class='li_none'>
            <span class='span_fail'>질문 삭제에 실패했습니다.</span>
          </LI>
        </c:otherwise>
      </c:choose>
      <LI class='li_none'>
        <br>
        <c:choose>
          <c:when test="${param.cnt == 1 }">
            <button type='button' 
                        onclick="location.href='./create.do'"
                        class="btn btn-primary">계속 등록</button>
          </c:when>
          <c:otherwise>
            <button type='button' 
                        onclick="history.back();"
                        class="btn btn-primary">다시 시도</button>
          </c:otherwise>
        </c:choose>
        
        <button type='button' 
                    onclick="location.href='../'"
                    class="btn btn-primary">홈으로</button>
         
         <button type='button' 
                    onclick="location.href='./list_by_memberno.do?memberno=${param.memberno}'"
                    class="btn btn-primary">목록</button>
      </LI>
     </UL>
  </fieldset>
 
</DIV>
  
<jsp:include page="/team1_menu/bottom_.jsp" flush='false' />
 
</body>
</html>