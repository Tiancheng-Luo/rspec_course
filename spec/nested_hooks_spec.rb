RSpec.describe 'before and after hooks' do
    before(:context) do
        puts 'Outer Before context'
    end

    after(:context) do
        puts 'Outer After context'
    end


    before(:example) do
        puts 'Outer Before example'
    end

    after(:example) do
        puts 'Outer After example'
    end

    context 'with nested condition A' do

        before(:context) do
            puts 'Inner Before context'
        end

        before(:example) do
            puts 'Inner Before example'
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
end

