import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static classes = [ "change" ]

    toggle() {
      this.element.classList.toggle(this.changeClass)
    }
}