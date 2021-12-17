import "./style.css";
import { Elm } from "./src/Main.elm";

const prizeId = Math.round(Math.random() * 9);

const rootId = "app";
const root = document.querySelector(`#${rootId}`);
const flags = { rootId, prizeId };

Elm.Main.init({ node: root, flags });
