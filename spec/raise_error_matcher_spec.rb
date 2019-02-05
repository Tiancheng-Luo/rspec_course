RSpec.describe 'raise_error matcher' do

    def some_method
        x
    end

    class CustomError < StandardError; end

    it 'can check for a specific error being raised' do
        expect { some_method }.to raise_error(NameError)
        expect { 10 / 0 }.to raise_error(ZeroDivisionError)
    end

    it 'can check for a user_created error' do
        expect {raise CustomError}.to raise_error(CustomError)
    end

    it 'best uses no error message in not_to' do
        expect {11 / 3}.not_to raise_error
    end

end
