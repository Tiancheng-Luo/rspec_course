RSpec.describe 'change matcher' do
    subject {[1, 2, 3]}

    it 'check that a method changes object state with `from().to()`' do
        expect { subject.push(5)}.to change {subject.length}.from(3).to(4)
    end

    it 'check by using `by`' do
        expect { subject.push(5)}.to change {subject.length}.by(1)
        expect { subject.pop}.to change {subject.length}.by(-1)
    end
end
