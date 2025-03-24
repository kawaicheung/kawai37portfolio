import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["slide", "dots"]
  static values = {
    dotClass: { type: String }
  }
  
  connect() {
    this.currentIndex = 0
    this.showSlide(this.currentIndex)
    this.createDots()
  }
  
  createDots() {
    this.slideTargets.forEach((_, index) => {
      const dot = document.createElement("button")
      dot.classList.add(this.dotClassValue)
      dot.setAttribute("data-action", "click->slider#goToSlide")
      dot.setAttribute("data-index", index)
      this.dotsTarget.appendChild(dot)
    })
    this.updateDots()
  }
  
  next() {
    this.currentIndex = (this.currentIndex + 1) % this.slideTargets.length
    this.showSlide(this.currentIndex)
  }
  
  previous() {
    this.currentIndex = (this.currentIndex - 1 + this.slideTargets.length) % this.slideTargets.length
    this.showSlide(this.currentIndex)
  }
  
  goToSlide(event) {
    const index = parseInt(event.currentTarget.dataset.index)
    this.currentIndex = index
    this.showSlide(this.currentIndex)
  }
  
  showSlide(index) {
    this.slideTargets.forEach((slide, i) => {
      slide.classList.toggle("active", i === index)
    })
    this.updateDots()
  }
  
  updateDots() {
    const dots = this.dotsTarget.querySelectorAll(`.${this.dotClassValue}`)
    dots.forEach((dot, index) => {
      dot.classList.toggle("active", index === this.currentIndex)
    })
  }
} 