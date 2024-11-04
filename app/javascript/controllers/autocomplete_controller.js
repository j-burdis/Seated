import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autocomplete"
export default class extends Controller {
  static targets = ["results"]

  connect() {
   console.log("autocomplete connected")
  //  console.log(this.resultsTarget)
  }

  search(event) {
    const query = event.currentTarget.value

    // Exit early if the query is too short
    if (query.length < 1) {
      this.resultsTarget.innerHTML = ""
      return
    }

    // const url = `https://www.seated.movie/cinemas?query=${query}` && `http://localhost:3000/cinemas?query=${query}`

    const baseUrl = window.location.hostname.includes('localhost') ? 'http://localhost:3000' : 'https://www.seated.movie';
    const url = `${baseUrl}/cinemas?query=${query}`;


    fetch(url, {
      headers: { 
        "Accept": "application/json",
        "Content-Type": "application/json",
        "X-Requested-With": "XMLHttpRequest"
      },
      credentials: 'include'
    })
    // .then(response => response.json())
    .then(response => {
      if (!response.ok) {
        throw new Error(`HTTP error! Status: ${response.status}`);
      }
      return response.json()
    })
    .then((data) => {
      console.log(data)
      this.updateResults(data)
      // this.resultsTarget.innerHTML(data.list)
    })
    .catch(error => console.error('Error:', error));
  }

  updateResults(cinemas) {
    // Clear current results
    this.resultsTarget.innerHTML = ""

    // Populate the results
    cinemas.forEach(cinema => {
      const cinemaCard = `
        <div class="cinema-card">
          <a href="/cinemas/${cinema.id}">
            <div class="cinema-card-location">
              <h1>${cinema.name}</h1>
              <h5>${cinema.address}</h5>
            </div>
            <div class="cinema-card-image">
              <img src="${cinema.image_url}" alt="${cinema.name}" width="300px">
            </div>
            <div class="cinema-card-extras">
              <p>${cinema.description}</p>
              <p>Average rating: ${cinema.average_rating ? Math.round(cinema.average_rating * 10) / 10 : 'No reviews yet'}</p>
            </div>
          </a>
        </div>`
      this.resultsTarget.insertAdjacentHTML('beforeend', cinemaCard)
    });
  }
}
