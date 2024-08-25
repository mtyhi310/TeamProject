<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
.accountbox {
    width: 400px;
    height: 600px;
    margin: auto;
    text-align: center;
    margin-top: 100px;
    border: 1px solid #D2D2D2;
    border-radius: .4rem;
    padding-left: 20px;  /* 좌측 여백 */
    padding-right: 20px; /* 우측 여백 */
}

   form > div {
      
      position:relative;
      width:390px;
      height:40px;
      border:1px solid #D2D2D2;
      border-radius: .4rem;
      margin:auto;
      margin-top:10px;
      text-align:left;
   } 
   
   	
    form > div > .inner {
    position: absolute;
    left: 10px;
    top: 7px;
    font-size: 18px;
    opacity: 0.6;
   }
    div input {
      border:none;
      outline:none;
      margin-top:28px;
      margin-left:10px;
      font-size:15px;
      cursor:pointer;
   }
   
   h2 {
   padding-bottom: 30px;
   }
   
   
   #txt {
      margin-top: 18px;
      width:370px;
      height:20px;
      color: black;
   }
   #pwd  {
    margin-top: 18px;
    width: 372px;
    height: 20px;
   }
    
   #sub {
      width:390px;
      height:40px;
      background:black;
      color:white;
      border:1px solid black;
      font-size:16px;
      border-radius: .4rem;
   }
  </style>
  <script>
    function check(my) // my=document.form
    {
        if(my.userid.value.trim().length==0)
        {
        	alert("아이디를 입력하세요");
        	return false;
        }	
        else if(my.pwd.value.trim().length==0)
        	 {
        	     alert("비밀번호를 입력하세요");
        	     return false;
        	 }
             else
            	 return true;
        	
    }
    
    var fs1=22;
    var fs2=22;
 
    function sizedown(n)
    {
    	var num;
        if(n==0)
           num=fs1;
        else
           num=fs2;
        	
        if(num!=11)
        {
        	s1=setInterval(function()
   	    	{   
   	    		num--;
   	    		document.getElementsByClassName("inner")[n].style.fontSize=num+"px";
   	    		
   	    		if(num==11)
   	    		{	
   	    			clearInterval(s1);
   	    			if(n==0)
   	    		       fs1=11;
         		    else
   	    		       fs2=11;
        		}
        	},10);
        }
    	 
    }
    
    function init(my,n)
    {
       if(my.value.trim().length==0)
       {
    	    if(n==0)
               num=fs1;
            else
               num=fs2;
    	 
    	    s2=setInterval(function()
    	   	{   
    	   		num++;
    	   		document.getElementsByClassName("inner")[n].style.fontSize=num+"px";
    	   		
    	   		if(num>=22)
    	   		{	
    	   			console.log(num);
    	   			clearInterval(s2);
    	   			if(n==0)
    	    		   fs1=22;
    	    		else
    	    		   fs2=22;
    	   		}
    	   	},20);
       }	   
    }
    window.onload=function()
    {
    	document.getElementById("txt").focus();
    }
    function useridSearch()
    {
    	son=open("usForm","","width=400,height=300");
    	son.moveTo(200,200);
    }
    function pwdSearch()
    {
    	son=open("psForm","","width=400,height=370");
    	son.moveTo(200,200);
    }
  </script>



</head>
<body>
   <div class="accountbox"> 
    <form method="post" action="loginOk" onsubmit="return check(this)">

     <h2> 로그인 </h2>
     <div> 
       <div class="inner">아이디</div>
       <input type="text" name="userid" value="superman" id="txt"  onfocus="sizedown(0)" onblur="init(this,0)">
     </div>
     <div> 
       <div class="inner">비밀번호</div>
       <input type="password" name="pwd" value="1234" id="pwd"  onfocus="sizedown(1)" onblur="init(this,1)"> 
     </div>
     <p align="center"> <input type="submit" value="로그인" id="sub"> </p>
    
    </div>
    </form>  
    
</body>
</html>