describe 'Radio', :radiobutton do

      before(:each) do
            visit "https://training-wheels-protocol.herokuapp.com/radios"
      end

      it 'Selecao por id' do 
            choose('cap')
      end

      it 'Selecao por find' do 
            find('input[value=guardians]').click
      end

      after(:each) do 
            sleep 3
      end

end