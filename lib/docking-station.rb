class DockingStation
    
    attr_reader :bikes, :capacity
    # sets default capacity of 20 when substantiating a new DockingStation
    DEFAULT_CAPACITY = 20
    
    def initialize(capacity=DEFAULT_CAPACITY)
      @bikes = []
      @capacity = capacity
    end

    def release_bike
      raise "no bikes here" if empty?
      @bikes
    end

    def dock_bike(bike)
      raise "full - no more bikes thanks" if full?
      @bikes << bike 
    end

  private

  def full?
    @bikes.length >= @capacity ? true : false
  end

  def empty?
    @bikes.empty? ? true : false 
  end
  
end
