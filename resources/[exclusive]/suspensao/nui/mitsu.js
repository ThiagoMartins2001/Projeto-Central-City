$(() => {
    window.addEventListener("message", function(event){
        if(event.data.abrir !== undefined) {
            let estatuses = event.data.abrir;
            if(estatuses) {
                $("body").show();
            } else {
                $("body").hide();
            }

            document.onkeyup = function(data) {
                if(data.which == 27) {
                    $.post("http://suspensao/Close");
                }
            };
        }

        if(event.data.action !== undefined) {
            let crose = event.data.action;
            if(crose) {
                $("body").hide();
            }
        }

        // Reproduzir sons de suspensão
        if (event.data.playSound !== undefined) {
            let sound = event.data.playSound;
            let audio = new Audio("nui/" + sound + ".ogg");
            audio.play();
        }
    });
    let cooldown = 2000; // 2 segundos em milissegundos
    $("body").hide();
    $(".botaos").click(function() {
        $.post("https://suspensao/botaos");
    });
    $(".botaod").click(function() {
        $.post("https://suspensao/botaod");
    });
    $(".botaosm").click(function() {
        let button = $(this);
        button.prop("disabled", true);
        $.post("https://suspensao/botaosm");
        setTimeout(() => {
            button.prop("disabled", false);
        }, cooldown);
    });

    $(".botaodm").click(function() {
        let button = $(this);
        button.prop("disabled", true);
        $.post("https://suspensao/botaodm");
        setTimeout(() => {
            button.prop("disabled", false);
        }, cooldown);
    });
});
