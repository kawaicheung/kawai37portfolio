import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["video", "overlay"]

  connect() {
    if (!this.showOverlay()) {
      this.hideOverlay()
    }
  }

  showOverlay() {
    // Only show overlay if both show_controls and user_initiated are true
    return this.videoTarget.controls && !this.videoTarget.autoplay
  }

  async play() {
    await this.videoTarget.play()
    this.videoTarget.play() // Not sure why I had to call play twice to work.
    this.hideOverlay()
  }

  hideOverlay() {
    this.overlayTarget.classList.add("hidden")
  }
} 