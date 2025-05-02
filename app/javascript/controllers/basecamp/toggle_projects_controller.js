import { Controller } from "@hotwired/stimulus"

// Note: OK with hardcoded "hidden" class name because it's a utility class
export default class extends Controller {
  static targets = ["button", "listing"]
  static values = { selectedClass: String }

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
      this.buttonTarget.classList.add(this.selectedClassValue)
    } else {
      this.buttonTarget.classList.remove(this.selectedClassValue)
    }
  }

  closeIfClickedOutside(e) {
    if (!this.listingTarget.contains(e.target)) {
      this.listingTarget.classList.add("hidden")
      this.buttonTarget.classList.remove(this.selectedClassValue)
    }
  }
} 