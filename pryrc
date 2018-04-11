# AwesomePrint
# @see https://github.com/pry/pry/wiki/FAQ#awesome_print
begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue LoadError
end

# Hirb
# @see https://github.com/pry/pry/wiki/FAQ#hirb
begin
  require 'hirb'
  Hirb.enable
rescue LoadError
end

# Pry ByeBug
begin
  require 'pry-byebug'

  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
rescue LoadError
end
