AnError = Class.new(Exception)

begin
  raise AnError
rescue
  puts "Bare rescue"
rescue StandardError
  puts "StandardError rescue"
rescue AnError
  puts "AnError rescue"
rescue Exception
  puts "Exception rescue"
end
