class ThroneFacade
    def self.create_thrones
        thrones = ThroneService.get_thrones
        thrones.map do |throne|
            Throne.new(throne)
        end
    end

    def self.send(params)
        throne = ThroneService.send_throne(params)
    end
end