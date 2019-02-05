class Person
  def a
    sleep(3)
    "Hello"
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: 'Hello', b: 20)
      expect(person.a).to eq("Hello")
    end
  end

  describe 'instance_double' do
    it 'should implement only defined method' do
      # the syntax is a bit different from double 1st arg as Class
      # person = instance_double(Person, a: "Hello", b:20)
      # expect(person.a).to eq("Hello")

      # Wrong number of args
      # person = instance_double(Person)
      # allow(person).to receive(:a).with(3, 10).and_return("Hello")

    end
  end
end
