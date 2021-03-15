require_relative 'appointment'

class DailyAppointment < Appointment
  def occurs_on?(hour, min)
    @hour == hour && @min == min #nos devuelve true or false
  end
  
  def to_s
    "reunion diaria el #{location} sobre #{purpose} el dia de hoy a la(s) #{hour}: #{min}"  
  end
end