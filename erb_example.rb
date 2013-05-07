require 'erb'

x = 42
myRA = ["movie1", "movie2", "movie3"]

myRA.each_with_index do |movie, index|
  template = ERB.new "The value of <%= #{index} %> is <%= myRA[#{index}] %>" 
  puts template.result(binding)
end

numRA = [3, 4, 5, 2, 4, 5]

numRA.each_with_index do |num, index|
  template = ERB.new "Value of num multiplied by its index is <%= #{num}*#{index} %>"
  puts template.result(binding)
end
# Name, age
myhash = {:name => "Juan", :age => 20}
template = ERB.new "<%= myhash[:name] %> is <%= myhash[:age] %> years old"
puts template.result(binding)

