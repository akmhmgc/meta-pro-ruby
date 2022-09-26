@events = []

def event(description, &block)
  @events << {description: description, block: block}
end
@setups = []

def setup(&block)
  @setups << block
end

setup do
  p '山の高さを設定'
  @mountain_hight = 100
end

event '山が低すぎる' do
  @mountain_hight < 200
end


@setups.each do |setup|
  setup.call
end


@events.each do |event|
  puts event[:description] if event[:block].call
end
