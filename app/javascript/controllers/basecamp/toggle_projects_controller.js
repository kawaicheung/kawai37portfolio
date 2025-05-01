import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["listing"]

  connect() {
    this.closeIfClickedOutside = this.closeIfClickedOutside.bind(this)
    document.addEventListener("click", this.closeIfClickedOutside)
  }

  disconnect() {
    document.removeEventListener("click", this.closeIfClickedOutside)
  }

  toggle(e) {
    e.stopPropagation()
    this.listingTarget.classList.toggle("hidden")
  }

  closeIfClickedOutside(e) {
    if (!this.listingTarget.contains(e.target)) {
      this.listingTarget.classList.add("hidden")
    }
  }
} 