// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap/dist/js/bootstrap.bundle.js"
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false
