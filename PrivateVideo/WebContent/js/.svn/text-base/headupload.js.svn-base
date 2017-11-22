$(document).ready(function(){
  $("#upload").click(function(){
	 $("#myFile").trigger("click");
	 $("#myFile").change(function(){
		   $.ajaxFileUpload({
	            url: 'uploadAction', 
	            type: 'post',
	            secureuri: false, //一般设置为false
	            fileElementId: 'myFile', // 上传文件的id、name属性名
	            dataType: 'text', //返回值类型，一般设置为json、application/json
	            success : function(data) {  
	         if(data!=0){
	            $("#headimg").html("<img width='100px' height='100px' src = 'upload/"+data+"'/>");
	            $("#imgsrc").val(data);
	           }else{
	            alert('上传的头像不符合格式要求，请使用标准软件编辑的图片');
	           } 
	         }
	        }); 
	 });

  });
 });