RSpec.describe 'equality matchers' do
    let(:a) {3.0}
    let(:b) {3}

    describe 'eq matcher or `be==`' do
        it 'tests for value and ignore type' do
            expect(a).to eq(3)
            expect(b).to eq(3.0)
            expect(a).to eq(b)
            expect(a).to be == b
        end
    end

    describe 'eq matcher' do
        it 'tests for value, including same type' do
            expect(a).not_to eql(b)
            expect(a).not_to eql(3)
            expect(b).to eql(3)
        end
    end

    describe 'equal and be matcher' do
        let (:c) { [1, 3, 4] }
        let (:d) { [1, 3, 4] }
        let (:e) {c} 

        it 'tests for identity' do
            expect(c).to eq(d)
            expect(c).not_to equal(d)
            expect(c).to equal(e)
            expect(c).not_to equal([1, 2, 3])
        end
    end
        
end
