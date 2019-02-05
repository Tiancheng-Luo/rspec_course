class King
    attr_reader :name

    def initialize(name)
        @name = name
    end
end

# Change the `King` to `Royal`, minimal changes are required.
RSpec.describe King do
    subject {described_class.new('Boris')}
    let(:louis) {described_class.new('Louis')}

    it 'response a great person' do
        expect(subject.name).to eq('Boris')
        expect(louis.name). to eq('louis')
    end
end
