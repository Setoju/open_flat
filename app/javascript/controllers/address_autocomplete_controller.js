import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.autocomplete = new google.maps.places.Autocomplete(this.element, {
      types: ['address'],
    })
    
    this.autocomplete.addListener('place_changed', () => {
      const place = this.autocomplete.getPlace()
      if (!place.formatted_address) return
      
      this.element.value = place.formatted_address
    })
  }

  disconnect() {
    if (this.autocomplete) {
      google.maps.event.clearInstanceListeners(this.autocomplete)
    }
  }
}
