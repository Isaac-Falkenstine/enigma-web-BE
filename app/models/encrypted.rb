class Encrypted
  def initialize(message, key)
    @message = message
    @key     = key
    @id      = 1 #Fastjson requires a id. Not nessessiary because I'm not using a database. A meaningless number should do for now
  end

  attr_reader :id

  def encrypted_message
    "12345678901"
  end
end
