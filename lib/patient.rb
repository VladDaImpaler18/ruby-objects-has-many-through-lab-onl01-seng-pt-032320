class Patient
  
<<<<<<< HEAD
  attr_accessor :name
  
  @@all = []
=======
  attr_accessor :name, 
  
  @all = []
>>>>>>> 536eacd5f52f045267f7b42f00f2f585837943d8


  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select{ |a| a.patient == self}
  end
<<<<<<< HEAD
  
  def doctors
    Appointment.all.collect{ |a| a.doctor if a.patient == self }
  end
=======
>>>>>>> 536eacd5f52f045267f7b42f00f2f585837943d8
end
