$(document).ready(function () {
    const buttons = [];
    const submenus = [];
    var normalButtons = 0;

    var Mtitle = {};

    function playAudio() {
		var audio = new Audio("click.ogg"); 
        audio.play()
    }
	function playAudioHover() {
		var audio2 = new Audio("click4.wav"); 
        audio2.play()
    }
	function AudioClickOn() {
		var audio3 = new Audio("click5.wav"); 
        audio3.play()
    }


    document.onkeyup = function (data) {
        if (data.which == 27) {
            for (i = 1; i <= normalButtons; ++i) {
                $("#normalbutton-" + i).remove();
            }

            normalButtons = 0;
            $("button").remove();
            $("#goback").remove();
            buttons.length = 0;
            submenus.length = 0;
            $(".Container").html("");

            $.post("http://dynamic/close");
			playAudio();
        }
    };
    window.addEventListener("message", function (event) {
        var item = event.data;
		var icons = {
			"Jogador": '<img src="./public/images/avatar.svg"></img>',
			"Roupas": '<img src="./public/images/clothes.svg"></img>',
			"Fardamentos": '<img src="./public/images/clothes.svg"></img>',
			"Computador": '<img src="./public/images/star.svg"></img>',
			"Armário": '<img src="./public/images/clothes.svg"></img>',
			"Anuncio Policia": '<img src="./public/images/info.svg"></img>',
			"Guardar": '<img src="./public/images/apply.svg"></img>',
			"Vestir": '<img src="./public/images/save.svg"></img>',
			"Parar de Seguir": '<img src="./public/images/seguir.svg"></img>',
			"Seguir": '<img src="./public/images/seguir.svg"></img>',
			"Animações do Pet": '<img src="./public/images/pets.svg"></img>',
			"Domésticos": '<img src="./public/images/pets.svg"></img>',
			"Óculos": '<img src="./public/images/oculos.svg"></img>',
			"Remover Máscara": '<img src="./public/images/mask.svg"></img>',
			"Remover Óculos": '<img src="./public/images/oculos.svg"></img>',
			"Remover Chapéu": '<img src="./public/images/hat.svg"></img>',
			"Chapéu": '<img src="./public/images/hat.svg"></img>',
			"Máscara": '<img src="./public/images/mask.svg"></img>',
			"Camisa": '<img src="./public/images/shirt.svg"></img>',
			"Jaqueta": '<img src="./public/images/hood.svg"></img>',
			"Calça": '<img src="./public/images/pants.svg"></img>',
			"Mãos": '<img src="./public/images/hand.svg"></img>',
			"Colete": '<img src="./public/images/vest.svg"></img>',
			"Sapatos": '<img src="./public/images/sapato.svg"></img>',
			"Remover": '<img src="./public/images/trash.svg"></img>',
			"Remover Roupas Premium": '<img src="./public/images/trash.svg"></img>',
			"Vestir | Premium": '<img src="./public/images/save.svg"></img>',
			"Guardar | Premium": '<img src="./public/images/apply.svg"></img>',
			"<b>1°<b>Armário Premium": '<img src="./public/images/clothesp.svg"></img>',
			"<b>2°<b>Armário Premium": '<img src="./public/images/clothesp.svg"></img>',
			"<b>1°<b>Armário": '<img src="./public/images/clothesp.svg"></img>',
			"<b>2°<b>Armário": '<img src="./public/images/clothesp.svg"></img>',
			"Roupas Premium Prata": '<img src="./public/images/clothes.svg"></img>',
			"Experiência": '<img src="./public/images/star.svg"></img>',
			"hypex_misc_cloackroom": '<img src="./public/images/star.svg"></img>',
			"Outros": '<img src="./public/images/info.svg"></img>',
			"Portas": '<img style="max-width: 8%;" src="./public/images/doors.svg"></img>',
			"Veículo": '<img style="max-width: 8%;" src="./public/images/car.svg"></img>',
		}

        if (item.addbutton == true) {
            if (!item.id) {
                normalButtons = normalButtons + 1;
                var b = `<div id="normalbutton-${normalButtons}" data-trigger="${item.trigger}" data-parm="${item.par}" data-server="${item.server}" class="normalbutton ${item.title == "Guardar" ? "amarelo" : ""}"><div id="normalbutton-${normalButtons}" class="normalbutton"><div class="flex-1">
                    ${icons[item.title] ? icons[item.title] : ""}
                    <div class="flex"><div class="title">${item.title}</div><div class="description">${item.description}</div></div><div class="button"><img src="./public/images/icon.svg"></div></div></div>`;
                $(".Container").append(b);
                buttons.push(b);
            } else {
                var b = `<button id="${item.id}" data-trigger="${item.trigger}" data-parm="${item.par}" data-server="${item.server}" class="a btn"><div class="flex-1">
                    ${icons[item.title] ? icons[item.title] : ""}
                    <div class="flex"><div class="title">${item.title}</div><div class="description">${item.description}</div></div></div><div class="button" style="margin-right: 10%;width: 2.7rem;height: 1.9rem;"><img src="./public/images/icon.svg"onclick="playAudio()"></div></button>`;
                buttons.push(b);
            }
        } else if (item.addmenu == true) {
            var aa = `<button data-menu="${item.menuid}" class="b btn"><div class="flex-1">
                ${icons[item.title] ? icons[item.title] : ""}
                <div class="flex"><div class="title">${item.title}</div><div class="description">${item.description}</div></div><div class="button"><img src="./public/images/icon.svg"></div></button>`;
            $(".Container").append(aa);
            submenus.push(aa);
        }

        if (item.close == true) {
            for (i = 1; i <= normalButtons; ++i) {
                $("#normalbutton-" + i).remove();
            }

            normalButtons = 0;
            $("button").remove();
            $("#goback").remove();
            buttons.length = 0;
            submenus.length = 0;
            $(".Container").html("");
            $(".Container").html(Mtitle["Titulodomenu"]);
            $(".Titulodomenu").hide();

            $.post("http://dynamic/close");
        }

        if (item.show == true) {
			playAudio();
            $(".Container").append(Mtitle["Titulodomenu"]);
            $(".Container").show();
            $(".Titulodomenu").show();
        }
    });
	$("body").on("click", ".normalbutton", function () {
        playAudioHover();
    });
	$("body").on("click", ".b", function () {
        playAudio();
    });

    $("body").on("click", ".a", function () {
        playAudio();
    });
	$("body").on("click", "[id=goback]", function () {
    });
    $("body").on("click", ".normalbutton", function () {
        $.post("http://dynamic/clicked", JSON.stringify({ trigger: $(this).attr("data-trigger"), param: $(this).attr("data-parm"), server: $(this).attr("data-server") }));
    });
    $("body").on("click", ".a", function () {
        $.post("http://dynamic/clicked", JSON.stringify({ trigger: $(this).attr("data-trigger"), param: $(this).attr("data-parm"), server: $(this).attr("data-server") }));
    });
    $("body").on("click", ".b", function () {
        $(".b").remove();
        $(".a").remove();

        for (i = 1; i <= normalButtons; ++i) {
            $("#normalbutton-" + i).hide();
        }

        var goBack = `<div id="goback" class="normalbutton amarelo"><div class="flex-1"><div class="flex"><div class="title">Voltar</div><div class="description">Clique e volte nas opções anteriores</div></div></div><div class="button-goback" style="margin-left: 6%;width: 2.7rem;height: 1.9rem;"><img src="./public/images/icon.svg"></div></div>`;
        $(".Container").append(goBack).show();
        $(".Titulodomenu").show(goBack);

        var menuid = $(this).attr("data-menu");
        for (i = 0; i < buttons.length; ++i) {
            var div = buttons[i];
            var match = div.match(`id="${menuid}"`);
            if (match) {
                $(".Container").append(div);
                $(".Titulodomenu").append();
            }
        }
    });

    $("body").on("click", "[id=goback]", function () {
        $(".b").remove();
        $(".a").remove();
        $("button").remove();
        $("#goback").remove();
        $(".Container").append(submenus).show();
		

        for (i = 1; i <= normalButtons; ++i) {
            $("#normalbutton-" + i).show();
            $(".Titulodomenu").show();
        }
    });
});
