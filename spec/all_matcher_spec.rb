RSpec.describe 'all matcher' do
    it 'allows for ruby traditional aggregate checks' do
        [5, 7, 9].each do |val|
            expect(val).to be_odd
            expect(val.odd?).to be true 
        end
    end

    it 'allows for aggregate checks' do
        expect([1, 3, 5, 7]).to all(be_odd.and be < 10)
        expect([4, 8, 6, 0]).to all(be_even.or be > 0)
        expect([[], [], []]).to all(be_empty)
        expect([0, 0]).to all(be_zero)
        expect([5, 7, 9]).to all(be < 10)
    end

    describe [5, 7, 9] do
        it { is_expected.to all(be_odd) }
        it { is_expected.to all(be < 10) }
    end
end




