Dado(/^que eu informe o "([^"]*)"$/) do |_cep|
 	@get = PesquisaCepAPI.new.get_api_url(_cep)
end

Dado (/^validar retorno do endereco "([^"]*)"$/) do |logradouro|
	expect(@get.response.code).to eq "200"
	expect(@get["logradouro"]).to eq logradouro
end

Dado(/^validar status de erro 404 por cep invalido$/) do 
	expect(@get.response.code).to eq "404"
	puts "Endereco nao encontrado: #{@get.response.code}"
end



