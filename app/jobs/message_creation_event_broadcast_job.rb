class MessageCreationEventBroadcastJob < ApplicationJob
  queue_as :default

  def perform(chat_message)
    # Do something later
    ActionCable.server.broadcast('chat_messages_channel', content: chat_message.content)
  end
end
