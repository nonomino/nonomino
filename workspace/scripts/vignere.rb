class VigenereCipher


  def initialize
    @lo_char_array = [*'a'..'z']
    @hi_char_array = [*'A'..'Z']
    @status = :encrypting
  end

  def input_message(text)
    @message = text
  end

  def use_password(phrase)
    alphanumeric?(phrase) ? @phrase = phrase : raise('ERROR: Non-alphanumeric pass')
  end

  def alphanumeric?(input)
    !input.match /[^a-zA-Z0-9]/
  end

  def encrypt_message_with_password(message,password)
    input_message(message)
    use_password(password)
    self.encrypt
  end

  def decrypt_message_with_password(message,password)
    input_message(message,password)
    use_password(password)
    self.decrypt
  end

  # -- Shifts the character by appropriate amount

  def shiftex(char,index)
    case char
      when /[a-z]/
        char = @lo_char_array[new_index(char,index)]
      when /[A-Z]/
        char = @hi_char_array[new_index(char,index)]
      when /[0-9]/
        char = ((char.to_i+charnum(@phrase[index]))%10).to_s
      else
        char
    end # case
  end

  def new_index(char,index)
    if @status == :encrypting
      (charnum(char)+charnum(@phrase[index]))%26
    else
      (charnum(char)-charnum(@phrase[index]))%26
    end
  end

  def charnum(char)
    if char =~ /[0-9]/
      return char.to_i
    end
      @lo_char_array.index(char.downcase)
  end

  def message?
    raise 'No message to encrypt!' if !@message
  end

  def encrypt
    self.message?
    @status = :encrypting
    self.crypt
  end # def decrypt

  def decrypt
    self.message?
    @status = :decrypting
    self.crypt
  end # def decrypt

  def crypt
    lengthen_password(@phrase)
    index = 0
    result = ""
    @message.chars.map do |x|
      x = shiftex(x,index)
      result << x
      index += 1
    end # self.map do
    @message = nil
    @phrase = nil
    result
  end # crypt

  def lengthen_password(phrase)
    @phrase = ""
    i = 0
    @message.chars.each do |x|
      if !alphanumeric?(x)
        @phrase << " "
      else
        @phrase << phrase.upcase[i]
        i += 1
        i = i%phrase.length
      end # if !alphanumeric
    end # self.chars do
  end
end

cipher = VigenereCipher.new

def prompt_user(cipher)
  cipher.input_message(gets.chomp)
  puts 'Input key'
  cipher.use_password(gets.chomp)
end

choice = 'What life gives you'

puts 'Welcome.'
while choice != ""
  puts 'To encrypt push 1, to decrypt push 2'
  choice = gets.chomp
  case choice.to_i
    when 1
      puts 'Input message to be encrypted'
      prompt_user(cipher)
      puts cipher.encrypt
    when 2
      puts 'Input coded message'
      prompt_user(cipher)
      puts cipher.decrypt
    else
      puts 'Enter either 1 or 2, or ENTER to exit'
  end
end
