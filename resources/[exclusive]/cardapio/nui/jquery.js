$(document).ready(function () {
	window.addEventListener("message", function (event) {

		switch (event.data.action) {
			case "showMenu":

				$(".itens-c").fadeIn(700);
				$(".itens-c2").hide();
				trocarPagina('Combos')
				document.querySelector('.container').style.backgroundImage = `url('${event.data.background}')`
				$("body").fadeIn(800);
				break;

			case "hideMenu":
				$("body").fadeOut();
				break;
		}

	});

	document.onkeyup = function (data) {
		if (data.which == 27) {
			$.post("http://Cardapio/close");
		}
	};
});

function closeNui() {
	$.post("http://Cardapio/close");
}

function Sfechar() {
	$("#pagina-viewcar").hide();
	$("#pagina-lista").hide();
	$("#Pagina-Inicio").hide();
}

function trocarPagina(tipo) {
	document.querySelector('.itens-c').innerHTML = ''
	if (tipo == 'Combos') {
		$(".itens-c2").hide();
		$('.itens-c').empty()
		listCardapio('Combos')
		$(".itens-c").fadeIn(700);
	}

	if (tipo == 'comidas') {
		$(".itens-c2").hide();
		$('.itens-c').empty()
		listCardapio('Comidas')
		$(".itens-c").fadeIn(700);
	}

	if (tipo == 'Bebidas') {
		$(".itens-c2").hide();
		$('.itens-c').empty()
		listCardapio('Bebidas')
		$(".itens-c").fadeIn(700);
	}

}

function listCardapio(tipo) {
	$("#categoriaid").html(tipo);
	$.post("http://Cardapio/consultCardapio", JSON.stringify({ lista: tipo }), (data) => {
		let consultCardapio = data.consultCardapio.sort((a, b) => (b.nome > a.nome) ? 1 : -1);
		document.querySelector('.itens-c').innerHTML = ''

		consultCardapio.forEach((key, value) => {


			$('.itens-c').prepend(`

				<div class="item">
					<img src="http://89.213.5.181/inventory/${key.index}.png" alt="">
					<div class="nome-item">${key.nome}</div>
					<div class="preco-item">${key.valor} $</div>
				</div>

			
			`)

		});
	});
}