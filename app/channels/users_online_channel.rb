class UsersOnlineChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'users_online_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def user_join(data)
    # puts data
    new_user = User.create(username: data['username'])
    ActionCable.server.broadcast('users_online_channel', username: new_user.username)
    # ActionCable.server.broadcast('users_online_channel', )
  end
end
