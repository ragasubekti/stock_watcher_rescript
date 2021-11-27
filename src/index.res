open Express

let app = expressCjs()

app->use(jsonMiddleware())

app->get("/", (_req, res) => {
    let _ = res->status(200)->json({
        "message": "Hello World!"
    })
})

let port = 3000
let _ = app->listenWithCallback(port, _ => {
    Js.Console.log("Starting...")
})