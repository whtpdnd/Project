function DoCheckEmpty()
{
	var check_empty = true;
	$("[must]").each(function(){
		if($(this).val() == "")
		{
			check_empty = false;
			alert($(this).attr("must"));
			$(this).focus();
			return false;
		}
	});
	
	if(!check_empty) return false;
	
	return true;
}