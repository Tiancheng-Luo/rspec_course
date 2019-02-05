# falsy values --- false, nil
# truthy values or be--- everything else

RSpec.describe 'be matchers' do
    it 'can test for truthiness' do
        expect(true).to be_truthy
        expect('Hello').to be_truthy
        expect(5).to be_truthy
        expect(0).to be_truthy
        expect(-1).to be_truthy
        expect([]).to be_truthy
        expect([1, 3]).to be_truthy
        expect({}).to be_truthy
        expect(:symbol).to be_truthy
    end

    it 'can test for falsiness' do
        expect(false).to be_falsy
        expect(nil).to be_falsy
    end

    # nil?
    it 'can test for nil' do
        expect(nil).to be_nil

        my_hash = {a: 5}
        expect(my_hash[:b]).to be_nil
    end
    
    # simply `be` 
    it 'can test for `be` ' do
         expect(true).to be
         expect(7).to be
         expect("foo").to be
         expect(nil).not_to be
         expect(false).not_to be
    end
end

