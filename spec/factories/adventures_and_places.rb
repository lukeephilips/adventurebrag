FactoryGirl.define do
  factory(:place) do
    name('Detroit')
    image('someurl')
  end
  factory(:adventure) do
    name('walk to corner store')
  end
end
