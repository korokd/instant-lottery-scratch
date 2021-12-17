import "./style.css";
import { Elm } from "./src/Main.elm";

const rootId = "app";
const root = document.querySelector(`#${rootId}`);
const flags = { rootId };

Elm.Main.init({ node: root, flags });
