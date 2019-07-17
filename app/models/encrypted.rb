class Encrypted
  def initialize(message, key, date)
    @message = message
    @key     = key
    @id      = 1 #Fastjson requires a id. Not nessessiary because I'm not using a database. A meaningless number should do for now
    @date    = parse_date
  end

  attr_reader :id

  def encrypted_message
    enigma = Enigma.new
    enigma.encrypt(@message, @key, @date) #DDMMYY
  end

  def parse_date
    d = Date.today
    y = d.strftime("%Y").delete("20")
    parsed_date = d.strftime("%d%m") + y
  end
end
