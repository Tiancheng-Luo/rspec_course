RSpec.describe 'not_to_method' do
    it 'checks that  2 values do not match' do
        expect(5).not_to eq(6)
        expect('Hello').not_to eq('hello')
        expect([1, 2]).not_to eq([1, 2, 3])
    end
end
