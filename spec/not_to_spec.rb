RSpec.describe 'not_to method' do
    it 'checks for the inverse of a matcher' do
        expect(5).not_to eq(10)
        expect([1, 2, 3]).not_to equal([1, 2, 3])
        expect(10).not_to be_odd
        expect({a:2}).not_to be_empty
        expect(nil).not_to be
        expect('philosophy').not_to start_with('car')
        expect(5).not_to respond_to(:length)
        expect([:a, :b, :c]).not_to include(:d)
        expect {11 / 3}.not_to raise_error
    end
end
