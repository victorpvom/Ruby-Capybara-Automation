describe 'Upload', :upload do

      before(:each) do
            @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
            @imagem = Dir.pwd + '/spec/fixtures/imagem.png'
            visit "https://training-wheels-protocol.herokuapp.com/upload"
      end

      it 'Upload com arquivo texto' do 
            attach_file('file-upload', @arquivo)
            click_button 'Upload'
            div_arquivo = find('#uploaded-file')
            expect(div_arquivo.text). to eql 'arquivo.txt'
      end

      it 'Upload com imagem' do 
            attach_file('file-upload', @imagem)
            click_button 'Upload'
            div_arquivo = find('#uploaded-file')
            img = find('#new-image')
            expect(img[:src]).to include 'imagem.png'
            expect(div_arquivo.text). to eql 'imagem.png'
      end

      after(:each) do 
            sleep 3
      end

end