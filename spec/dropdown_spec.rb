describe 'Dropdowns', :dropdown do

      it 'Selecionar item simples' do 
            visit "https://training-wheels-protocol.herokuapp.com/dropdown"
            select('Loki', from: 'dropdown')
      end

      it 'Selecionar item com find' do 
            visit "https://training-wheels-protocol.herokuapp.com/dropdown"
            drop = find('.avenger-list')
            drop.find('option', text: 'Scott Lang').select_option
      end

      it 'Qualquer item', :sample do 
            visit "https://training-wheels-protocol.herokuapp.com/dropdown"
            drop = find('.avenger-list')
            drop.all('option').sample.select_option #Sample sorteia um dos elementos para ser selecionado
      end

end