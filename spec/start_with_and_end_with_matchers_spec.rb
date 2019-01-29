RSpec.describe 'start_with and end_with matchers' do
    describe 'caterpillar' do
        it 'should check for substring at the beginning or end' do
            # it is case-sensitive
            expect(subject).to start_with('cat')
            expect(subject).to end_with('pillar')
        end

        it {is_expected.to start_with('cat')}
        it {is_expected.to end_with('pillar')}
    end

    describe [:a, :b, :c, :d] do
        it 'should check for elements at the beginning or end of the array' do
            expect(subject).to start_with(:a)
            expect(subject).to start_with(:a, :b)
            # 注意不能在start_with 变量加空格, 会报错, 视为to的变量  
            # expect(subject).to start_with (:a, :b)
            expect(subject).to end_with(:d)
        end
        it {is_expected.to start_with(:a, :b)}
        it {is_expected.to end_with(:c, :d)}
    end

end
