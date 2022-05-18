describe 'Caixa de seleção', :checkbox do

      before(:each) do
            visit "https://training-wheels-protocol.herokuapp.com/checkboxes"
      end

      it 'Check Simples' do 
            check('thor')
      end

      it 'Uncheck' do
            uncheck('antman')
      end

      it 'Marcando com set true' do 
            find('input[value=cap]').set(true)
      end

      it 'Desmarcando com set false' do 
            find('input[value=cap]').set(false)
      end

      after(:each) do 
            sleep 3
      end

end