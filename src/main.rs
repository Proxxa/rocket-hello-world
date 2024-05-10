use rocket::{get, routes};

#[get("/")]
fn index() -> String {
    "Hello, world!".to_owned()
}

#[rocket::launch]
fn rocket() -> rocket::Rocket<rocket::Build> { 
    rocket::build()
        .mount("/", routes![index])
}
