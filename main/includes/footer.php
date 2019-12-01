</div><br><br></br></br></br></br></br></br></br></br></br></br></br></br>
<div class="col-md-12 text-center">&copy; 2017 Komfo Anokye Assets Management System | NSS Software Teams. All Rights Reserved.</div>
<script>
function updateSizes(){
  var sizeString = '';
  for(var i=1;i<=12;i++){
    if(jQuery('#size'+i).val() != ''){
      sizeString += jQuery('#size'+i).val()+':'+jQuery('#qty'+i).val()+':'+jQuery('#threshold'+i).val()+',';
    }
  }
  jQuery('#sizes').val(sizeString);
}

 function get_child_options(selected){
  if(typeof selected === 'undefined'){
 		   var selected = '';
 		}
  var parentID = jQuery('#parent').val();
  jQuery.ajax({
    url: '/asset/admin/parsers/child_categories.php',
    type: 'POST',
    data: {parentID : parentID, selected: selected},
    success: function(data){
        jQuery('#child').html(data);
    },
          error: function(){alert("something went wrong with the child options.")},
      });
  }
  jQuery('select[name="parent"]').change(function(){
	get_child_options();
});
</script>

  </body>
</html>
