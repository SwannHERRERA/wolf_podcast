import { Context } from "koa";

const indexRoute = async (ctx: Context) => {
  ctx.body = "Hello World!";
};

export default indexRoute;
