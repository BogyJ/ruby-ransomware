require 'fernet'

module Encryption

  def encrypt
    secret = "Fd5Xmvxs/yPr/jL0P+TY9zYVqV6XW86ZaVbRF+LNZ8w="

    Dir.entries("./encrypt").each do |el|
      if el != "." and el != ".."
        data = File.read("./encrypt/" + el)
        puts "Encrypted Data: " + data
        token = Fernet.generate(secret, data)
        File.write("./encrypt/" + el, token)
      end
    end
  end

end
