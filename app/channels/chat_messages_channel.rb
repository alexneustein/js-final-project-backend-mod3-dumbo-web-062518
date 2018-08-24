class ChatMessagesChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'chat_messages_channel'
    ChatMessagesChannel.all_messages(Message.all)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

<<<<<<< HEAD
  def chat(data)
    # puts "test"
    # ChatMessagesChannel.broadcast_to('chat_messages_channel', data)
    # Message.create(content: data.fetch('content'))
    # puts data
    ActionCable.server.broadcast('chat_messages_channel', content: data["content"], username: data["username"], color: data["color"])
=======
  def send_text(data)
    Message.create(content: data['content'], username: data['username'])
    ActionCable.server.broadcast('chat_messages_channel', content: data['content'], username: data['username'])
>>>>>>> d06377afff602ebb48ef45b3c798704e50ea3777
  end

  def self.all_messages(messages)
    ActionCable.server.broadcast('chat_messages_channel', history: messages)
  end
end
