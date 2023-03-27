// import { Controller } from "@hotwired/stimulus"
// import { createConsumer } from "@rails/actioncable"

// // Connects to data-controller="chatroom-subscription"
// export default class extends Controller {
//   static values = { chatroomId: Number }
//   static targets = ["messages"]

//   connect() {
//     this.channel = createConsumer().subscriptions.create(
//       { channel: "ChatroomChannel", id: this.chatroomIdValue },
//       { received: data => this.#insertMessageAndScrollDown(data) }
//     )
//     console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}.`)

//     // Add this line to scroll down when the page is opened
//     this.scrollToBottom();
//   }

//   resetForm(event) {
//     event.target.reset()
//   }

//   disconnect() {
//     console.log("Unsubscribed from the chatroom")
//     this.channel.unsubscribe()
//   }

//   #insertMessageAndScrollDown(data) {
//     const messageWrapper = document.createElement('div');
//     messageWrapper.classList.add('row');

//     const imageWrapper = document.createElement('div');
//     imageWrapper.classList.add('col-1');

//     const img = document.createElement('img');
//     img.src = data.photo_url;
//     img.style.height = '47px';
//     img.style.width = '47px';
//     img.style.borderRadius = '50%';
//     imageWrapper.appendChild(img);

//     const messageContentWrapper = document.createElement('div');
//     messageContentWrapper.classList.add('col-9');
//     messageContentWrapper.innerHTML = data.content;

//     messageWrapper.appendChild(imageWrapper);
//     messageWrapper.appendChild(messageContentWrapper);

//     this.messagesTarget.appendChild(messageWrapper);
//     this.scrollToBottom();
//   }


//   // Add this function to handle scrolling to the bottom
//   scrollToBottom() {
//     this.messagesTarget.scrollTop = this.messagesTarget.scrollHeight;
//   }
// }
