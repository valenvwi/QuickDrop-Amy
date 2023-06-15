import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    let coords = [(this.markersValue[0].lng + this.markersValue[1].lng) / 2, (this.markersValue[0].lat + this.markersValue[1].lat) / 2]
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10",
      center: coords,
      zoom: 9
    })

    this.#addMarkersToMap()
    console.log(this.markersValue)
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .addTo(this.map)
    })
  }
}
////////////////////////////////////////////////
  // connect() {
  //   mapboxgl.accessToken = this.apiKeyValue
  //   let coords = [ this.markerValue.lng, this.markerValue.lat ]
  //   this.map = new mapboxgl.Map({
  //     container: this.element,
  //     style: "mapbox://styles/mapbox/streets-v10",
  //     center: coords,
  //     zoom: 11
  //   })
  //   new mapboxgl.Markers()
  //     .setLngLat(coords)
  //     .addTo(this.map)
  // }
