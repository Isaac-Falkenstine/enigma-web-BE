class Enigma
  def initialize
    @character_map = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9',' ','.',',']
    @rotation_array = nil
    @offset_array = nil
  end

  def encrypt(message, key, date)
    rotor = Rotation.new(key)
    @rotation_array = rotor.rotation
    offset = Offset.new
    @offset_array = offset.get_offset
  end

  def adds_rotation_to_index(message)
    rotated_indexes_array = gets_indexes_of_message(message).map.with_index do |n, i|
      n + total_rotation[i % total_rotation.length]
    end
    rotated_indexes_array
  end

  def gets_indexes_of_message(message)
    indexed_message = []
    message_array = message.downcase.split('')
    message_array.each do |i|
      @character_map.each do |x|
        if i == x
          indexed_message << @character_map.index(x)
        end
      end
    end
    indexed_message
  end
end
