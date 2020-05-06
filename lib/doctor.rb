class Doctor
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
  Appointment.all.select{ |a| a.doctor == self }
<<<<<<< HEAD
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def patients
    Appointment.all.collect{ |a| a.patient if a.doctor == self }
  end
  
=======
  end
  
>>>>>>> 536eacd5f52f045267f7b42f00f2f585837943d8
end