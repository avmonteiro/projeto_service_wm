class PesquisaCepAPI
    include HTTParty
    base_uri ENVIRONMENT['correios']
   

#=============================================================================================
# API de CEP
#=============================================================================================
    def get_api_url(cep)
    	self.class.get("/#{cep}/")
    end
#=============================================================================================

end