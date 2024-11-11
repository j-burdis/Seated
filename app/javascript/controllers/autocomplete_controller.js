import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autocomplete"
export default class extends Controller {
  static targets = ["results"]

  connect() {
  //  console.log("autocomplete connected")
  }

  search(event) {
    const query = event.currentTarget.value

    // Exit early if the query is too short
    if (query.length < 1) {
      // this.resultsTarget.innerHTML = ""
      this.fetchAllCinemasSortedByRating();
      return;
    }

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
    .then(response => {
      if (!response.ok) {
        throw new Error(`HTTP error! Status: ${response.status}`);
      }
      return response.json()
    })
    .then((data) => {
      console.log(data)
      this.updateResults(data)
    })
    .catch(error => console.error('Error:', error));
  }

  fetchAllCinemasSortedByRating() {
    const baseUrl = window.location.hostname.includes('localhost') ? 'http://localhost:3000' : 'https://www.seated.movie';
    const url = `${baseUrl}/cinemas?sorted_by=rating`;

    fetch(url, {
      headers: { 
        "Accept": "application/json",
        "Content-Type": "application/json",
        "X-Requested-With": "XMLHttpRequest"
      },
      credentials: 'include'
    })
    .then(response => {
      if (!response.ok) {
        throw new Error(`HTTP error! Status: ${response.status}`);
      }
      return response.json();
    })
    .then((data) => {
      console.log("Displaying all cinemas sorted by rating:", data);
      this.updateResults(data);
    })
    .catch(error => console.error('Error:', error));
  }

  updateResults(cinemas) {
    // Clear current results
    this.resultsTarget.innerHTML = ""

    // Populate the results
    cinemas.forEach(cinema => {

      // Generate rating display as HTML
      let ratingHtml = '<div class="review-card-rating large-rating">';
      if (cinema.average_rating) {
        const roundedRating = Math.floor(cinema.average_rating);
        const partialRating = (cinema.average_rating % 1).toFixed(1);

        // Render full rating images
        for (let i = 0; i < roundedRating; i++) {
          ratingHtml += `<img src="/assets/seated-emoji.png" alt="Red Rating Emoji" class="red-rating-image">`;
        }

        // Render a half rating image if partial rating >= 0.5
        if (partialRating >= 0.5) {
          ratingHtml += `<img src="/assets/seated-emoji.png" alt="Half Red Rating Emoji" class="half-red-rating-image">`;
        }

        ratingHtml += `<span class="review-rating-number">(${(Math.round(cinema.average_rating * 10) / 10).toFixed(1)})</span>`;
      } else {
        ratingHtml = `<span class="review-rating-number">No reviews yet</span>`;
      }

      // Create cinema card HTML
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
              
              <div class="cinema-list-average-rating large-rating review-rating-scale">
                ${ratingHtml}
              </div>
            </div>
          </a>
        </div>`
      this.resultsTarget.insertAdjacentHTML('beforeend', cinemaCard)
    });
  }
}
