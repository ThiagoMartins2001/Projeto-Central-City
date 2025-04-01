$(document).ready(function(){
	let list = [];
	let blocked = false;

	let localizationSvg = `
		<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M12.1864 1.17016L12.2482 1.16666L12.3241 1.17132L12.3766 1.18066L12.4483 1.20107L12.5107 1.22791L12.5691 1.26116L12.6216 1.30024L12.6694 1.34399L12.6997 1.37841L12.7476 1.44607L12.7779 1.50207C12.8053 1.56041 12.8228 1.62224 12.8304 1.68641L12.8333 1.74824C12.8333 1.79199 12.8286 1.83516 12.8193 1.87657L12.7989 1.94832L8.98856 12.4932C8.91633 12.6505 8.80049 12.7837 8.6548 12.8771C8.50911 12.9704 8.33969 13.02 8.16665 13.02C8.0108 13.0205 7.85748 12.9806 7.72162 12.9042C7.58576 12.8279 7.47199 12.7176 7.3914 12.5842L7.35348 12.5102L5.39815 8.60066L1.50731 6.65466C1.36335 6.58881 1.23919 6.48633 1.14726 6.35744C1.05534 6.22856 0.998859 6.0778 0.98348 5.92024L0.97998 5.83332C0.97998 5.50666 1.15556 5.20799 1.47056 5.03416L1.55223 4.99332L12.0621 1.19816L12.124 1.18066L12.1864 1.17016Z" fill="white" fill-opacity="0.25"/>
		</svg>
	`

	let timeSvg = `
		<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
			<g clip-path="url(#clip0_111_478)">
			<path d="M6.99996 1.16666C10.2217 1.16666 12.8333 3.77824 12.8333 6.99999C12.8333 10.2217 10.2217 12.8333 6.99996 12.8333C3.77821 12.8333 1.16663 10.2217 1.16663 6.99999C1.16663 3.77824 3.77821 1.16666 6.99996 1.16666ZM6.99996 3.49999C6.84525 3.49999 6.69688 3.56145 6.58748 3.67084C6.47808 3.78024 6.41663 3.92861 6.41663 4.08332V6.99999C6.41666 7.15469 6.47814 7.30304 6.58754 7.41241L8.33754 9.16241C8.44756 9.26867 8.59491 9.32746 8.74786 9.32613C8.90081 9.3248 9.04712 9.26346 9.15527 9.1553C9.26343 9.04715 9.32477 8.90084 9.3261 8.74789C9.32743 8.59494 9.26863 8.44759 9.16238 8.33757L7.58329 6.75849V4.08332C7.58329 3.92861 7.52183 3.78024 7.41244 3.67084C7.30304 3.56145 7.15467 3.49999 6.99996 3.49999Z" fill="white" fill-opacity="0.25"/>
			</g>
			<defs>
			<clipPath id="clip0_111_478">
			<rect width="14" height="14" fill="white"/>
			</clipPath>
			</defs>
		</svg>
	`

	window.addEventListener("message",function(event){
		switch(event["data"]["action"]){
			case "notify":
				addNotification(event["data"]["data"]);
			break

			case "showAll":
				if (list["length"] > 0){
					showLast()
					$.post("http://notifycall/focusOn");
				}
			break

			case "hideAll":
				hideAll();
				$.post("http://notifycall/focusOff");
			break
		}
	});

	document.onkeyup = function(data){
		if (data["which"] == 27){
			hideAll();
			$.post("http://notifycall/focusOff");
		}
	};

	$(document).on("click","#loc",function(){
		$.post("http://notifycall/setWay",JSON.stringify({ x: $(this).attr("data-x"), y: $(this).attr("data-y") }));
	});

	$(document).on("click","#phone",function(){
		$.post("http://notifycall/phoneCall",JSON.stringify({ phone: $(this).attr("data-phone") }));
	});

	const hideAll = () => {
		blocked = false;
		$(".body").html("");
		$(".body").css("overflow","hidden");
	};

	const addNotification = data => {
		if (list["length"] > 9) list.shift();

		const html = `<div class="notification">
			<div class="content">
				${data["code"] === undefined ? "" : `<div class="code">10-${data["code"]}</div>`}

				<div class="titulo">${data["title"]}</div>

				${data["name"] === undefined ? "" : `<div class="content-line"><i class="fa fa-arrow-right"></i>  ${data["name"]}</div>`}

				${data["street"] === undefined ? "" : `<div class="content-line">${localizationSvg}  ${data["street"]}</div>`}

				${data["criminal"] === undefined ? "" : `<div class="content-line"><i class="fa fa-arrow-right"></i>  ${data["criminal"]}</div>`}

				${data["vehicle"] === undefined ? "" : `<div class="content-line"><i class="fa fa-arrow-right"></i>  ${data["vehicle"]}</div>`}

				${data["time"] === undefined ? "" : `<div class="content-line">${timeSvg}  ${data["time"]}</div>`}
			</div>

			<div class="buttons">
				<div class="chamados" id="loc" data-x="${data["x"]}" data-y="${data["y"]}"><i class="fas fa-map-marker-alt fa-lg"></i></div>
				${data["phone"] === undefined ? "" : `<div class="chamados" id="phone" data-phone="${data["phone"]}"><i class="fas fa-phone-alt"></i></div>`}
			</div>

			${data["text"] === undefined ? "" : `<div class="texto">${data["text"]}</div>`}
		</div>`

		list.push(html);

		if (!blocked){
			$(html).prependTo(".body")
			.hide()
			.show("slide",{ direction: "right" },500)
			.delay(5000)
			.hide("slide",{ direction: "right" },500)
		}
	};

	const showLast = () => {
		hideAll();
		blocked = true
		$(".body").css("overflow-y","scroll");

		for (i in list){
			$(list[i]).prependTo(".body");
		}
	};
});