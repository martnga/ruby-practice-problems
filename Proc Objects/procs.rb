 #Calling a proc object with arguments
doYouLike = Proc.new do |aGoodThing|
  puts 'I *really* like '+aGoodThing+'!'
end

doYouLike.call 'Stars'
doYouLike.call 'Molly'

#profiling of a method with the help of a proc.

def profile descriptionOfBlock, &block
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts descriptionOfBlock+':  '+duration.to_s+' seconds'
end

profile '25000 pairs' do
  number = 1

  25000.times do
    number = number + number
  end
end

profile 'count to a million' do
  number = 0

  1000000.times do
    number = number + 1
  end
end
