import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comment"
export default class extends Controller {
  connect() {
    // console.log("comments controller connected")
  }

  // static targets = ["commentsSection", "toggleButton"]

  // toggle() {
  //   const commentsSection = this.commentsSectionTarget;
  //   const toggleButton = this.toggleButtonTarget;
  
  //   // commentsSection.classList.toggle("hidden");

  //   if (commentsSection.classList.contains("hidden")) {
  //     commentsSection.style.height = commentsSection.scrollHeight + "px";
  //     commentsSection.classList.remove("hidden");

  //     setTimeout(() => {
  //       commentsSection.style.height = 'auto';
  //     }, 500);

  //     toggleButton.innerText = "Hide Comments";
  //   } else {
  //     commentsSection.style.height = commentsSection.scrollHeight + "px";

  //     setTimeout(() => {
  //       commentsSection.style.height = 0;
  //       commentsSection.classList.add("hidden");
  //     }, 10);

  //     toggleButton.innerText = "Show Comments";
  //   }
  // }

}
