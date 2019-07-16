class MessageSerializer
  include FastJsonapi::ObjectSerializer

  attributes :encrypted_message

end
