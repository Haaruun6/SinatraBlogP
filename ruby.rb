# this is a comment

puts "This is hello ruby"

#variable assignment

x = 5
name = "Michael"
puts name

#arrays & hashes

myList = [1,2,3,4,5]
puts myList[0]

dict = {
	"name" => "Michael"
}
puts dict["name"]

#symbols
#like strings but not strings

dict2 = {
	:name => "john"
}

puts dict2[:name]

if dict[:name] == "john"
	puts "You were right"
else
	puts "You were wrong"
end

def add_three(n)
	n+3
end

puts add_three(3)


x = [5,6,7,8,9]

x.each do |itter|
	puts itter + 8
end

name = "Doug"

puts "My name is #{name}"