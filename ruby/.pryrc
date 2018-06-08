# === EDITOR ===
Pry.editor = 'vim'

# == Pry-Nav - Using pry as a debugger ==
Pry.commands.alias_command 'c', 'continue' rescue nil
Pry.commands.alias_command 's', 'step' rescue nil
Pry.commands.alias_command 'n', 'next' rescue nil
Pry.commands.alias_command 'r!', 'reload!' rescue nil

# === CUSTOM PROMPT ===
# This prompt shows the ruby version (useful for RVM)
Pry.prompt = [proc { |obj, nest_level, _| "#{RUBY_VERSION} (#{obj}):#{nest_level} pry > " }, proc { |obj, nest_level, _| "#{RUBY_VERSION} (#{obj}):#{nest_level} pry * " }]

module PatchedAwesomePrint
  require 'awesome_print'
  require 'moped'
  ::Moped::BSON = ::BSON
  AwesomePrint.pry!
end

include PatchedAwesomePrint
