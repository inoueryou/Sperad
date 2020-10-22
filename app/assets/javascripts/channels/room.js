document.addEventListener('turbolinks:load', function() {
  App.room = App.cable.subscriptions.create({
    channel: "RoomChannel",
    room: $('#messages').data('room_id')
  }, {
    connected: function() {},
    disconnected: function() {},
    received: function(data) {
      return $('#messages').append(data['message']);
    },
    speak: function(message) {
      return this.perform('speak', {
        message: message
      });
    }
  });

  return $(document).on('click', "#submit", function(event) {
    App.room.speak($("#content").val());
    $("#content").val("");
    return event.preventDefault();
	});
});