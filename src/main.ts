import "./style.css";
import typescriptLogo from "./typescript.svg";
import { setupCounter } from "./counter";
// @ts-ignore
import { Elm } from "./Main.elm";

document.querySelector<HTMLDivElement>("#app")!.innerHTML = `
  <div>
    <a href="https://vitejs.dev" target="_blank">
      <img src="/vite.svg" class="logo" alt="Vite logo" />
    </a>
    <a href="https://www.typescriptlang.org/" target="_blank">
      <img src="${typescriptLogo}" class="logo vanilla" alt="TypeScript logo" />
    </a>
    <h1>Vite + TypeScript + Elm</h1>
    <div class="card">
      <button id="counter" type="button"></button>
    </div>
    <p class="read-the-docs">
      Click on the Vite and TypeScript logos to learn more
    </p>
  </div>
  <div id="elm-app"/>
`;

// Elm.MyApplication.init();
Elm.Main.init({
  node: document.getElementById("elm-app"),
  flags: "Initial Message",
});
setupCounter(document.querySelector<HTMLButtonElement>("#counter")!);
