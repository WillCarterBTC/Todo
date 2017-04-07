@arr = []

def print_array(arr)
  puts "\n***"
  @arr.each_with_index {|val, index| puts "#{index +1}. #{val} "}
  print "***\n\n"
end

def add(item)
  @arr << item
  #Time.now.utc
end

def remove(item)
  @arr.delete_at(item.to_i - 1)
end

def edit(item)
  puts 'What shall the new task be?'
  new_item = gets.strip
  @arr[@arr.index(item)] = new_item
end

def prompt()
  print '> '
end

task = ''
prompt

while item = gets.strip.downcase do
    if item.include? 'add'
    item.sub! 'add', ''
      add(item)
    elsif item.include? 'remove'
    item.sub! 'remove ', ''
      remove(item)
    elsif item.include? 'edit'
    item.sub! 'edit', ''
      edit(item)
    else puts 'ERROR Unknown command, try again.'
  end  
  print_array(@arr)
  prompt
end
