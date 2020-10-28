document.addEventListener('DOMContentLoaded', function() {
  App.room = App.cable.subscriptions.create({
    channel: "RoomChannel",
    room: $('#messages').data('room_id')
  }, {
    connected: function() {},
    disconnected: function() {},
    received: function(data) {
      return $('#messages').append(data['message']);
    },
    speak: function(message, sent_user) {
      return this.perform('speak', {
        message: message,
        sent_user: sent_user
      });
    }
  });

  return $(document).on('click', "#submit", function(event) {
    App.room.speak($("#content").val(), $("#sent_user").val());
    $("#content").val("");
    return event.preventDefault();
	});
});