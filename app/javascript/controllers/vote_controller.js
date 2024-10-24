import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="vote"
export default class extends Controller {
  connect() {
    console.log("voting stimulus")
  }

  static targets = ["voteCount", "voteButton"]

  submitVote(event) {
    event.preventDefault();
    console.log("Submitting vote");

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
          this.updateVoteButton(data);
        }
      })
      .catch(error => console.log("Error:", error));
  }

  getCsrfToken() {
    return document.querySelector('meta[name="csrf-token"]').getAttribute('content');
  }

  // updateButton(data) {
  //   if (data.vote_exists) {
  //     this.voteButtonTarget.outerHTML = `<form class="button_to" action="${data.delete_vote_url}" method="post" data-action="submit->vote#vote" data-vote-target="voteButton">
  //       <input type="hidden" name="_method" value="delete">
  //       <button class="vote-button-down" type="submit"><i class="fa-solid fa-sort-down"></i></button>
  //     </form>`;
  //   } else {
  //     this.voteButtonTarget.outerHTML = `<form class="button_to" action="${data.create_vote_url}" method="post" data-action="submit->vote#vote" data-vote-target="voteButton">
  //       <button class="vote-button-up" type="submit"><i class="fa-solid fa-sort-up"></i></button>
  //     </form>`;
  //   }
  // }
  updateVoteButton(data) {
    const voteButtonHtml = data.vote_exists
      ? `<form class="button_to" action="${data.delete_vote_url}" method="post" data-action="submit->vote#submitVote" data-vote-target="voteButton">
          <input type="hidden" name="_method" value="delete">
          <button class="vote-button-down" type="submit"><i class="fa-solid fa-thumbs-up"></i></button>
        </form>`
      : `<form class="button_to" action="${data.create_vote_url}" method="post" data-action="submit->vote#submitVote" data-vote-target="voteButton">
          <button class="vote-button-up" type="submit"><i class="fa-regular fa-thumbs-up"></i></button>
        </form>`;

    this.voteButtonTarget.outerHTML = voteButtonHtml;
  }
}
