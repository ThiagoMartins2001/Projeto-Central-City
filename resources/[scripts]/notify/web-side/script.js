const colors = {
  "tropical": "rgba(132,84,27)",
  "808": "rgba(249, 1, 0)",
  "dps": "rgba(0, 43, 162)",
  "alert": "rgba(198, 0, 0)",
  "blue": "rgba(129, 179, 224)",
  "hunger": "rgba(245, 165, 0)",
  "rockit": "rgba(209, 81, 59)",
  "emerald": "rgba(53, 86, 41)",
  "hpsul": "rgba(66, 240, 196)",
  "tokyo": "rgba(249, 190, 221)",
  "sucess": "rgba(163, 200, 70)",
  "vanilla01": "rgba(176, 8, 7)",
  "mecsul": "rgba(254, 111, 111)",
  "street": "rgba(246, 246, 246)",
  "kidscafe": "rgba(246, 217, 5)",
  "thirst": "rgba(102, 154, 225)",
  "hasegawa": "rgba(250, 56, 54)",
  "cinema": "rgba(193, 190, 158)",
  "rexdiner": "rgba(180, 39, 203)",
  "hpnorte": "rgba(230, 149, 165)",
  "important": "rgba(255, 180, 0)",
  "pokecafe": "rgba(168, 150, 19)",
  "bahamas": "rgba(150, 190, 211)",
  "escolinha": "rgba(222, 95, 103)",
  "sandybar": "rgba(139, 136, 142)",
  "mecnorte": "rgba(186, 215, 240)",
  "vanilla02": "rgba(219, 154, 159)"
}

const app = {
  notify: ({ message, time, type }) => {

    if (!message && !time && !type) return

    let container = document.querySelector("body .notifyC");
    const elementNotify = document.createElement("div");


    elementNotify.classList.add("notify")

    elementNotify.innerHTML = `
          <img src="./assets/${type}.png" alt="">
          <p>${message}</p>
          <div class="progress" style="animation: progressBar ${time}ms linear; background: ${colors[type]}"></div>
        `;
    container.appendChild(elementNotify);
    setTimeout(() => elementNotify.style.animation = "unappendAnimation 1s", time - 500);
    setTimeout(() => elementNotify.remove(), time);
  }
}

window.addEventListener("message", ({ data }) => {
  app.notify(data)
})