import { Controller } from "@hotwired/stimulus";
import { Popover } from "bootstrap/dist/js/bootstrap.bundle.js";

export default class extends Controller {
  connect() {
    new Popover(this.element)
    console.log("helllo 2")
  }
}
