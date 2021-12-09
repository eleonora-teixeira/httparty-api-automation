
#arquivo que armazena a url padrão de requisição dos endpoints

class BaseService
    include HTTParty
    base_uri "https://portal.vr.com.br/api-web/comum"
end