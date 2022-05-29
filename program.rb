require_relative './encrypt.rb'
require_relative './decrypt.rb'

class Program
  include Encryption, Decryption
end

program = Program.new
program.decrypt
