import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    path: String,
    key: String
  }

  connect() {
    this.handleKeyPress = this.handleKeyPress.bind(this)
    document.addEventListener("keydown", this.handleKeyPress)
  }

  disconnect() {
    document.removeEventListener("keydown", this.handleKeyPress)
  }

  handleKeyPress(event) {
    if (event.key === this.keyValue) {
      window.location.href = this.pathValue
    }
  }
}