RSpec.shared_context 'common' do
    before do
        @foods = []
    end

    def some_helper_method
        5
    end

    let(:some_variable) {[1, 3, 5]}
end

RSpec.describe 'first example group' do
    include_context 'common'

    it 'can use outside instance variables' do
        expect(@foods.length).to eq(0)
        @foods << 'sushi'
        expect(@foods.length).to eq(1)  
    end


    it 'can reuse instance variable across different examples' do
        expect(@foods.length).to eq(0)
    end
end
