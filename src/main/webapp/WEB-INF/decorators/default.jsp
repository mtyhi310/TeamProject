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
    box-sizing: border-box;
}

header #menu {
    display: flex;
    align-items: center;
    width: 100%;
    box-sizing: border-box;
    position: relative;
    z-index:1;
}

header #menu #title {
    flex: 0 1 auto;
}

a {
    text-decoration: none; 
    color: inherit; 
}

header #menu .mainMenu {
    flex: 1;
    display: flex;
    justify-content: center;
    position: relative; /* 부모 요소를 상대 위치로 설정 */
}

header #menu .mainMenu ul {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    margin-left: 80px;
}

header #menu .mainMenu > ul > li {
    margin-right: 40px;
    position: relative; /* 서브 메뉴 위치를 위한 relative 설정 */
    padding:10px 20px;
}

header #menu .mainMenu li:last-child {
    margin-right: 0;
}

header #menu .mainMenu ul ul {
    display: none; /* 기본적으로 서브 메뉴 숨김 */
    position: absolute; /* 서브 메뉴를 부모 항목의 바로 아래에 위치시킴 */
    top: 100%; /* 부모 항목의 바로 아래에 위치 */
    left:0;
    background-color: #333;
    min-width: 160px;
    z-index: 1;
    margin-left:0;
}
header #menu .mainMenu ul ul li {
    display: block;
}

header #menu .mainMenu ul ul li a {
    color: white;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

header:hover #menu .mainMenu ul ul li a {
    background-color: #575757;
}

header:hover #menu .mainMenu > ul ul {
    display: block; /* 메뉴에 마우스를 올리면 모든 하위 메뉴 표시 */
}

header #menu .mainMenu ul {
    position: relative; /* 전체 메뉴의 상대 위치 */
}

header #menu .headbutton {
    flex: 0 1 auto;
    display: flex;
    align-items: center;
}

header #menu .headbutton button {
    margin-left: 10px;
    cursor: pointer;
}

header .menu_bg {
	display:none; position:absolute; left:0; top:100%; width:100%; height:200px; padding:10px 0; background:#fff; border-bottom:1px solid #ddd; z-index:0;
}

.headbutton button[type="button"] {
    border: 3px solid #D2D2D2;
    background-color: #D2D2D2;
    border-radius: 1.0rem;
    font-size: 13px;
    letter-spacing: -1.3px;
}
</style>
<script>
	function showBg(){
		document.getElementById("bg").style.display="block";
	}
	function hideBg(){
		document.getElementById("bg").style.display="none";
	}
</script>
  <sitemesh:write property="head"/>
</head>
<body>
    <header>
        <div id="menu" onmouseover="showBg()" onmouseleave="hideBg()">
            <div id="title">
                <h1><a href="/">LEEUM</a></h1>
            </div>
            <div class="mainMenu"> 
                <ul id="main">
                    <li>
                        메뉴1
                        <ul class="sub">
                            <li><a href="#">메뉴1_하위1</a></li>
                            <li><a href="#">하위2</a></li>
                            <li><a href="#">하위3</a></li>
                            <li><a href="#">하위4</a></li>
                        </ul>
                    </li>
                    <li>
                        메뉴2
                        <ul class="sub">
                            <li><a href="#">메뉴2_하위1</a></li>
                            <li><a href="#">하위2</a></li>
                            <li><a href="#">하위3</a></li>
                            <li><a href="#">하위4</a></li>
                        </ul>
                    </li>
                    <li>
                        메뉴3
                        <ul class="sub">
                            <li><a href="#">메뉴3_하위1</a></li>
                            <li><a href="#">하위2</a></li>
                            <li><a href="#">하위3</a></li>
                            <li><a href="#">하위4</a></li>
                        </ul>
                    </li>
                    <li>
                        메뉴4
                        <ul class="sub">
                            <li><a href="#">메뉴4_하위1</a></li>
                            <li><a href="#">하위2</a></li>
                            <li><a href="#">하위3</a></li>
                            <li><a href="#">하위4</a></li>
                        </ul>
                    </li>
                    <li>
                        메뉴5
                        <ul class="sub">
                            <li><a href="#">하위1</a></li>
                            <li><a href="#">하위2</a></li>
                            <li><a href="#">하위3</a></li>
                            <li><a href="#">하위4</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="headbutton">
                <button type="button" onclick="movePage()">SHOP</button>
                <button type="button" onclick="chgLanguage()">Eng</button>
                <button type="button" onclick="movePage('/login/login')">로그인</button>
                <button type="button" onclick="movePage('/join/join')">회원가입</button>
            </div>
        </div>
        <div id="bg" class="menu_bg"></div>
    </header>
    
      <sitemesh:write property="body"/>
</body>
</html>
