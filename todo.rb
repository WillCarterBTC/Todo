@arr = []
def print_array(arr)
  puts "\n***"
  @arr.each_with_index {|val, index| puts "#{index +1}. #{val} "}
  puts "***\n\n> "
end

def add(input)
  input.sub! 'add', ''
  @arr << input
  #Time.now.utc
  print_array(@arr)
end

def remove(input)
  input = []
  input.sub! 'remove ', ''
  @arr.delete_at(input.to_i - 1)
  print_array(arr)
end

input = ''
print '> '

while input = gets.strip.downcase do
    if input.include? 'add'
    add(input)
    elsif input.include? 'remove'
    remove(input)
    else puts 'ERROR Unknown command, try again.\n'
    print '> '
  end
end 
