<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

header {
    width: 100%;
    height: 4.8rem;
    padding: 0 1.5rem;
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: transparent;
    position: sticky;
    top: 0;
    z-index: 99;
    transition: background-color .4s;
    box-sizing: border-box; /* 패딩과 보더를 포함한 전체 너비 계산 */
}

header #menu {
    display: flex;
    align-items: center;
    width: 100%;
    box-sizing: border-box;
    position: relative; /* 상대 위치 지정 */
}

header #menu #title {
    flex: 0 1 auto; /* 제목을 왼쪽으로 밀어냅니다 */
}

header #menu .mainMenu {
    flex: 1; /* 가운데로 이동하도록 합니다 */
    display: flex;
    justify-content: center; /* 메뉴 항목들을 가운데로 정렬합니다 */
}

header #menu .mainMenu ul {
    list-style: none; /* 기본 마커 제거 */
    padding: 0;       /* 기본 패딩 제거 */
    margin: 0;        /* 기본 여백 제거 */
    display: flex;    /* 목록 항목들을 수평으로 나열합니다 */
}

header #menu .mainMenu li {
    margin-right: 20px; /* 항목 사이의 간격을 조정합니다 */
}

header #menu .mainMenu li:last-child {
    margin-right: 0; /* 마지막 항목에는 오른쪽 여백을 제거합니다 */
}

header #menu .headbutton {
    flex: 0 1 auto; /* 버튼들을 오른쪽으로 배치합니다 */
    display: flex;
    align-items: center;
}

header #menu .headbutton button {
    margin-left: 10px; /* 버튼 사이의 간격을 조정합니다 */
}
</style>
<script> 
function movePage(path)
{
		location.href=path;
	}

</script>

 <sitemesh:write property="head"/>


</head>
<body>
    <header>
        <div id="menu">
            <div id="title">
                <h1>LEEUM</h1>
            </div>
            <div class="mainMenu"> 
                <ul id="main">
                    <li>메뉴1</li>
                    <li>메뉴2</li>
                    <li>메뉴3</li>
                    <li>메뉴4</li>
                    <li>메뉴5</li>
                </ul>
            </div>
            <div class="headbutton">
                <button type="button" onclick="movePage()">SHOP</button>
                <button type="button" onclick="chgLanguage()">Eng</button>
                <button type="button" onclick="movePage('/login/login')">로그인</button>
                <button type="button" onclick="movePage('/join/join')">회원가입</button>
            </div>
        </div>
    </header>
    
    
    
    
    
    <sitemesh:write property="body"/>
    
    
    
    
</body>
</html>