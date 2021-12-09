require_relative "base_service"

#arquivo que chama o endpoint para obter a lista de produtos e estabelicimentos, extendendo o base_service, para consumir a url padrão

class VrPati < BaseService

    def get_list
        return self.class.get(
            "/enumerations/VRPAT",
            headers: {
                "Content-Type": "application/json"
            },
        )
    end

end