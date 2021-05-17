function selectAll(){
    $("#check_all").change(function(){
    var checkboxes = $(':checkbox');
    
    if(checkboxes.prop("checked")){
        $(checkboxes).prop('checked', $(this).is(":checked"))
    }else{
        $(checkboxes).prop("checked", false);
    }
})
}