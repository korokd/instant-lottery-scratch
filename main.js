import "./style.css";
import { Elm } from "./src/Main.elm";

const prizeId = Math.round(Math.random() * 9);

const root = document.querySelector("#app");
const flags = { prizeId };

Elm.Main.init({ node: root, flags });
