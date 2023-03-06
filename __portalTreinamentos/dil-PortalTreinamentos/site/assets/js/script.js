// Script JS

// Fechar e Manter Modal
$(document).ready(function(){
    $(".modal").click(function(){
        $(".modal").hide();
    });
    $(".modal-stop").click(function(e){
        e.stopPropagation();
    });
});
