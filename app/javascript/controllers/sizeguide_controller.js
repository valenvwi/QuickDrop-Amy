import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button", "list"]

  connect() {
    console.log("Hello from our first Stimulus controller")
  }

  appear() {
    if (this.listTarget.classList.contains("hidden")) {
      this.listTarget.classList.remove("hidden");
    } else {
      this.listTarget.classList.add("hidden");
    }
  }
}
