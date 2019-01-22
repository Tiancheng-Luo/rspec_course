RSpec.describe 'before and after hooks' do
    before(:context) do
        puts 'Before context'
    end

    after(:context) do
        puts 'After context'
    end


    before(:example) do
        puts 'Before example'
    end

    after(:example) do
        puts 'After example'
    end

    it 'is just random' do
        expect(1+1).to eq(2)
        puts 'example 1'
    end

    it 'is just another random' do
        expect(1+3).to eq 4 
        puts 'example 2'
    end
end

