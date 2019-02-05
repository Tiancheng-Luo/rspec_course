# `#`for instance member and `.` for class member
RSpec.describe '#even? method' do
    #it 'should return true if number is even'
    #it 'should return false if number is odd'

    context 'with even number' do
    #describe 'with even number' do
        it 'should return true' do
            expect(6.even?).to eq(true)
        end
    end

    context 'with odd number' do
    #describe 'with odd number' do
        it 'should return false' do
            expect(5.even?).to eq(false)
        end
    end

end
