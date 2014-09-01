<%@ page language="java" errorPage="../error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head></head>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			$.ajaxSetup({ cache: false, async :false });
			$("#pop").click(function(){
				$("#disablingDiv").toggle();
				$('#pop').hide().fadeIn('slow').delay(1500).fadeOut('slow');
				
				$("#imgProgress").toggle();
				var my="sivasankar";
				$.ajax({
					url: "http://localhost:8080/SpringWithJquery/ajax/method.htm?name=",
					type: "GET",
					data: my,
					success: function(data){
						alert(data.name);
					},
					error:function(){
					alert("Error while processing your request. Please try again later");
					}
			});
				
				$("#imgProgress").toggle();
				
				
			});
			
		});
		
		function doSubmit(){
			
			$("#popup").toggle();
			$("#imgProgress").show();
			$("#disablingDiv").toggle();
			var name="sivasankar";
			$.ajax({
				url: "http://localhost:8080/SpringWithJquery/ajax/method.htm?name=",
				type: "POST",
				data: name,
				success: function(data){
				},
				error:function(){
				alert("Error while processing your request. Please try again later");
				}
		});
			
			$("#imgProgress").hide();
		}
		
		</script>        
    <style type="text/css">
      #disablingDiv
      {
          /* Do not display it on entry */
          display: none; 
       
          /* Display it on the layer with index 1001.
             Make sure this is the highest z-index value
             used by layers on that page */
          z-index:1001;
           
          /* make it cover the whole screen */
          position: absolute; 
          top: 0%; 
          left: 0%; 
          width: 100%; 
          height: 100%; 
       
          /* make it white but fully transparent */
          background-color: #958c8c; 
          opacity:.3; 
          filter: alpha(opacity=30); 
      }
      
      .popup
      {
          position:absolute;
          top:40%;
          left:40%;
          width:300px;
          height:200px;
          font-family:calibri;
          font-size:18px;
          text-align=center;
          padding:10px;
          background-color:rgb(240,240,240);
          border:4px solid grey outset;
          z-index:100000000000000000;
          display:none
      }
      
      .processpop
      {
      position:absolute;
          top:40%;
          left:40%;
          width:300px;
          height:100px;
          font-family:calibri;
          font-size:18px;
          text-align=center;
          padding:10px;
          background-color:rgb(240,240,240);
          border:4px solid grey outset;
          z-index:100000000000000000;
          display:none
      
      }
      
      
    .a option {
        height: 50px;
    }
      
      
    </style>
    <body>
    <table>
    <tr>
    <td id="pop">popup  </td>
    </tr>
<c:forEach items="${empList}" var="empList">
   <c:out value="${empList.empNo}" />    <c:out value="${empList.name}" />  <c:out value="${empList.city}" />  <c:out value="${empList.contact}" /><br><br>
</c:forEach>

 <tr>
    <td id="pop">popup  </td>
    
  <select size="1" position="absolute" onclick="size=(size!=1)?5:1;" >
  <option>Apple</option>
  <option>Orange</option>
  <option>Pineapple</option>
  <option>Banana</option>
  <option>Apple1</option>
  <option>Orange1</option>
  <option>Pineapple1</option>
  <option>Banana1</option>
<option>Apple2</option>
  <option>Orange2</option>
  <option>Pineapple2</option>
  <option>Banana2</option>
<option>Apple3</option>
  <option>Orange3</option>
  <option>Pineapple3</option>
  <option>Banana3</option>
</select>
<!-- <div style="max-height: 70px;">
<select>
<div style="max-height: 70px;">
  
    <option selected>Select</option>
    <option>This is an option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
  </optgroup>
</select>  -->







<!-- <select>
  <optgroup style="max-height: 65px;" label="">
    <option selected>Select</option>
    <option>This is an option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
    <option>This is another Option</option>
  </optgroup>
</select> -->

</form>
    
    
    </tr>

</table>

<!-- <img   src="../img/ajax-loader.gif" style="display: none;" width="334" id="imgProgress" class="popup"/> -->

<div id="imgProgress" class="processpop">
<p> please wait...</p>

</div>



<div  id="popup" class="popup">
		<div id="close" class="close" align="right">X</div>
			May we call you on your cell phone using our dialer? 
		    <span style="width=100%;position:absolute;bottom:10;right:15;">
		    <div align="center">
		        Consent &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   <input type="checkbox" id="yes" name="concat_yes" value="Y" ><br>
		        </div>
		        <div align="center">
				No Consent	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp    <input type="checkbox" id="no" name="concat_no" value="N"><br>
				</div>
				<div align="left">
<input type="button" onclick="return doSubmit();" value="Submit" />
</div> 

    </body>
</html>













