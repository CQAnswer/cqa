<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>首页</title>
</head>

<body>
<!--正文-->
<div class="div_center" style="height: 550px;">
  <div class="div_950"> 
    	<!--位置-->
<div id="div_position">
        	首页
        </div>
        <!--搜索栏-->
        <div id="div_search">
         <div id="div_txt_search">
                    <input id="txt_search" name="search_text" size="22"  maxlength="60" value="" />
          </div>
        <div id="div_btn_search">
                  <input id="btn_search" type="submit" value="" >
          </div>
        </div>
        <!--模块-->
<div id="div_block">
        <!--第一栏最新问题,登录显示用户个人信息-->
      <div class="div_block_left">
        <!--Latest question -->
       		<div class="div_new_question">
            	<a class="a_hot_title">最近提问</a>
                <a class="a_content">说有一个卖肉的，他的肉都是切好一块一块，每块5元，有一天傍晚，他卖得只剩下一块肉了，这时候来了3个人要卖，在协商之后决定3个人每个人出2块钱买这块肉，于是卖肉的收了总共是6块钱，回到家后他想想觉得心里过意不去，就从中拿出1块钱叫他儿子去还给那3个人，儿子想啊，1块钱3个,于是他就自做主张拿出4毛钱买了冰棍吃，再把剩下的6毛钱每个人2毛还给了他们，现在问题出来了，买肉的每个人出了2块，回收了2毛是5.8元</a>
                 <div class="div_btn_qa">
                          		<em>15/122</em>
                                <a href="" class="div_btn_a_q" title="我也要问" >
                                    <img src="<c:url value='/images/question.png'/>"/>
                                    
                                </a>
                                <a href="" class="div_btn_a_a" title="我来回答">
                                    <img src="<c:url value='/images/answer.png'/>" />
                                </a>          
                            </div>  
            </div>
           
      </div>
        
        <!--第二栏-->
      <div class="div_block_right">
        	<div class="div_hot_question">
            	<a class="a_hot_title">热门问题</a>
            	
            </div>
        	<div class="div_hot_tog">
            	<a class="a_hot_title">热门标签</a>
            	
            </div>
            <div class="div_hot_qas">
              <a class="a_hot_title">经典问答</a>
            </div>
      </div>
        
        <!--第三栏-->
      <div class="div_block_right">
<div class="div_modoue_left">
		  <a class="a_modoue">Java</a>
        </div>
        
<div class="div_modoue_right">
            <a class="a_modoue">Net</a>
       </div>
        
<div class="div_modoue_down">
          <a class="a_modoue">Web</a>
        </div>
        
<div class="div_modoue_down_right">
          <a class="a_modoue">Android</a>
        </div>
        
<div class="div_modoue_down">
          <a class="a_modoue">数据库</a>
        </div>
        
        <div class="div_modoue_down_right">
          <a class="a_modoue">Others</a>
        </div>
        
      </div>
        
<!--
        	<div class="div_1">
            最近问题 
            </div>         
      <div class="div_3">
      周热点问题
	  </div>
            <div class="div_4">
            经典问题
			</div>
            <div class="div_5">
            我的问题
			</div>
            <div class="div_6">
            我的提问
</div>            
            <div class="div_7">
            Java
			</div>     
            <div class="div_7">
            Web
			</div> 
            <div class="div_7">
            Android
			</div>                  
            <div class="div_7">
            数据库
      		</div>
            --->
    </div>
        
    </div>
</div>

</body>
</html>
