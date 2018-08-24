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
    User.create(username: data['username'], identifier: data['identifier'])
    usernames = User.all_usernames
    ActionCable.server.broadcast('users_online_channel', username: usernames)
    # ActionCable.server.broadcast('users_online_channel', )
  end

  def user_leave(data)
    user = User.find_by(identifier: data['identifier'])
    User.destroy(user.id)
    usernames = User.all_usernames
    ActionCable.server.broadcast('users_online_channel', username: usernames)
  end
end
