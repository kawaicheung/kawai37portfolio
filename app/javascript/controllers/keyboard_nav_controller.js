import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["instructions"]
  static values = {
    key: String,
    path: String
  }

  connect() {
    document.addEventListener("keydown", this.handleKeyPress.bind(this))
  }

  disconnect() {
    document.removeEventListener("keydown", this.handleKeyPress.bind(this))
  }

  handleKeyPress(event) {
    if (event.key === this.keyValue) {
      window.location.href = this.pathValue
    }
  }
}