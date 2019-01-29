RSpec.describe 'contain_exactly matcher' do
    subject {[1, 3, 5]}

    describe 'long form syntax' do
        it 'should check for the presence of all elements' do
            expect(subject).to contain_exactly(1, 3, 5)
            expect(subject).to contain_exactly(5, 3, 1)
            expect(subject).to contain_exactly(1, 5, 3)
        end

        it {is_expected.to contain_exactly(1, 5, 3)}
    end
end
