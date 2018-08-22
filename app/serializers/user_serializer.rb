class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  # def message_content
  #   object.messages.map(&:content)
  # end
  has_many :messages, serializer: MessageSerializer, include_nested_associations: true
  # has_many :messages, serializer: MessageSerializer
  has_many :channels, serializer: ChannelSerializer
end
