import * as Koa from "koa";
import * as Router from "koa-router";
import indexRoute from "./server";

const app = new Koa();
const router = new Router();

router.get("/", indexRoute);

app.use(router.routes());

app.listen(3000);

console.log("Server running on port 3000");
