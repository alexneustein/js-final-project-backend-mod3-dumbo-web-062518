class UsersOnlineChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'users_online_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def user(data)
    puts "TESTING"
    ActionCable.server.broadcast('users_online_channel', username: data["username"])
  end
end
