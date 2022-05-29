require 'fernet'

module Decryption

  def decrypt
    secret = "Fd5Xmvxs/yPr/jL0P+TY9zYVqV6XW86ZaVbRF+LNZ8w="

    Dir.entries("./encrypt").each do |el|
      if el != "." and el != ".."
        encrypted_data = File.read("./encrypt/" + el)
        verifier = Fernet.verifier(secret, encrypted_data)
        if verifier.valid?
          decrypted_message = verifier.message
          File.write("./encrypt/" + el, decrypted_message)
          puts "Decrypted Data: " + decrypted_message
        end
      end
    end
  end

end
