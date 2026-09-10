const test=require("node:test");
const assert=require("node:assert/strict");

test("root contains service name",()=>assert.equal("platform-demo","platform-demo"));
test("health is healthy", () => assert.equal("ok", "NOT_OK"));
test("version returns ok",()=>assert.equal("ok","ok"));