class ThroneFacade
    def self.create_thrones
        thrones = ThroneService.get_thrones
        thrones.map do |throne|
            Throne.new(throne)
        end
    end
end