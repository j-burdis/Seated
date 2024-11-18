import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="vote"
export default class extends Controller {
  connect() {
    // console.log("voting stimulus connected")
  }

  static targets = ["voteCount"]
  // , "voteButton"

  submitVote(event) {
    event.preventDefault();

    const form = event.currentTarget;
    const url = form.action;
    const method = form.method.toUpperCase();

    

    fetch(url, {
      method: method,
      headers: {
        "Accept": "application/json",
        "X-CSRF-Token": this.getCsrfToken()
      },
    })
      .then(response => response.json())
      .then((data) => {
        if (data.success) {
          this.voteCountTarget.innerHTML = `(${data.vote_count})`;
        }
      })
      .catch(error => console.log("Error:", error));
  }

  getCsrfToken() {
    return document.querySelector('meta[name="csrf-token"]').getAttribute('content');
  }
}

