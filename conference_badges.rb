def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(name_arr)
  badges = []
  name_arr.each do |name|
    badges.push badge_maker(name)
  end
  return badges
end 

def assign_rooms(speakers)
  list = []
  speakers.each_with_index {|speaker,index|
    list.push "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
  }
  return list
end

def printer(attendees)
  badges = batch_badge_creator(attendees)
  badges.each do |name_tag|
    puts name_tag
  end
  list = assign_rooms(attendees)
  list.each do |assignment|
    puts assignment
  end
end