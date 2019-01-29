RSpec.describe 'include matcher' do
   describe 'hot chocolate' do
       it {is_expected.to include('hot')}
       it {is_expected.to include('choc')}
       it {is_expected.to include('late')}
   end 

   describe [10, 20, 30] do
       it {is_expected.to include(10)}
       it {is_expected.to include(30,20)}
   end

   describe ({a: 1, b: 3}) do
       it {is_expected.to include(:a)}
       it {is_expected.to include(a:1)}
   end
end
