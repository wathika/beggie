document.addEventListener('turbolinks:load', function(){
  if(window.projectId) {
    App.project_chat = App.cable.subscriptions.create(
      {
        channel: "ProjectChatChannel",
        room: window.projectId
      },

    {

      connected: function () {
        console.log("We're connected!")
      },
      disconnected: function () {

      },
      received: function () {

      }
    })
  }
})
