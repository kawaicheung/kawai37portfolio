import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["listing"]

  toggle() {
    this.listingTarget.style.display = this.listingTarget.style.display === "none" ? "block" : "none"
  }
} 