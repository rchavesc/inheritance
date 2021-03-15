require_relative 'appointment'

class MonthlyAppointment < Appointment
  attr_accessor :day

  def initialize(location, purpose, hour, min, day)
    @day = day
    super(location, purpose, hour, min) #si se utiliza el super sin los parametros, el super me pasaria todos, pero como no necesitamos el day, debemos especificar cual vamos a utilizar
  end

  def occurs_on?(day) #nos devuelve true or false
    @day == day
  end

  def to_s
    "Reunion mensual en #{location} sobre #{purpose} el dia #{day} a las #{hour}: #{min}"  
  end
end

=begin
irb 
require_relative
cita = MonthlyAppointment.new('San Jose', 'Sick', 21, 30, '1/1/2021')
puts/print cita
cita.occurs_on?('1/1/2021')=>true
cita.occurs_on?('2/1/2021')=>false
cita_diaria = DailyAppointment.new('San Jose', 'Sick', 21, 30)
=end