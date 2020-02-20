class DockingStation
    
    attr_reader :bikes
    # sets default capacity of 20 when substantiating a new DockingStation
    def initialize(capacity: 20)
      @bikes = []
      @capacity = capacity
    end

    def release_bike
      raise "no bikes here" if @bikes.empty?
      @bikes
    end

    def dock_bike(bike)
      raise "full - no more bikes thanks" if @bikes.length == @capacity
      @bikes << bike 
    end

  private

  def full?
    @bikes.length >= @capacity ? true : false
  end

end
