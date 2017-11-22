$(document).ready(function(){
	 $('#selClazz').prepend("<option selected='selected'>请选择</option>");
   $('#selClazz').change(function(){
	   var $seloption = $('#selClazz option:selected');
	   var cno = $seloption.val();
	      var txt = $(this).children('option:selected').text();
	      if(txt!='请选择'){
	      $.ajax({type: 'POST',
	    	  url:'studentAction_getMaxSnoByCno.action',
	    	  dataType: 'text',
	    	  data:{'cno':cno},
	    	  success: function(maxcno){
	    		  var subcno = parseInt(maxcno.substr(6,2));
	    		  var newsno = '';
	    		  if(subcno<9){
	    			  subcno += 1;
	    			  newsno = cno + '0' + subcno;
	    		  }else{
	    			  subcno += 1;
	    			  newsno = cno  + subcno;
	    		  }
	    		$('#studentsno').val(newsno);
	    		$('#snospan').text(newsno);
	    	  } 
	      	});
	      }else{
	    		$('#studentsno').val('');
	    		$('#snospan').text('');
	      }
   });
 });