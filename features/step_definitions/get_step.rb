Dado('que realizo uma requisição GET no endpoint') do
    @response = VrPati.new.get_list  #obtenção da lista de estabelicimentos e produtos
    expect(@response.code).to eql 200 #apenas uma validação do response code
end

Quando('possuo a chave {string}') do |key|
    expect(@response.parsed_response).to include key  #valida se dentro do parsed_response obtido há a chave "typeOfEstablishment"
end

Então('vejo que um dos estabelicimentos é') do
    puts @response.parsed_response['typeOfEstablishment'][Faker::Number.within(range: 0..55)] # print dos estabelecimentos que compõem "typeOfEstablishment", de forma aleatória
                                                                                              # utilizando um faker, que gerará  um número no intervalo de 0 à 55, sendo esse número
                                                                                              # a posição do estabelecimento no json
end