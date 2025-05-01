import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button", "listing"]

  connect() {
    this.closeIfClickedOutside = this.closeIfClickedOutside.bind(this)
    document.addEventListener("click", this.closeIfClickedOutside)
  }

  disconnect() {
    document.removeEventListener("click", this.closeIfClickedOutside)
  }

  toggle(e) {
    e.stopPropagation()
    const wasHidden = this.listingTarget.classList.contains("hidden")
    this.listingTarget.classList.toggle("hidden")
    if (wasHidden) {
      this.buttonTarget.classList.add("projects__btn--selected")
    } else {
      this.buttonTarget.classList.remove("projects__btn--selected")
    }
  }

  closeIfClickedOutside(e) {
    if (!this.listingTarget.contains(e.target)) {
      this.listingTarget.classList.add("hidden")
      this.buttonTarget.classList.remove("projects__btn--selected")
    }
  }
} 