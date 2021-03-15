require_relative 'appointment'

class OneTimeAppointment < Appointment
  attr_accessor :day, :year, :month

  def initialize(location, purpose, hour, min, day, month, year)
    @day = day
    @month = month
    @year = year
    super(location, purpose, hour, min) #se trae los valores del initialize del appointment. si se utiliza el super sin los parametros, el super me pasaria todos, pero como no necesitamos el day, debemos especificar cual vamos a utilizar
  end

  def occurs_on?(day, month, year) #nos devuelve true or false
    @day == day && @month == month && @year == year
  end

  def to_s
    "Reunion unica en #{location} sobre #{purpose} el dia #{day}/#{month}/#{year} a las #{hour}: #{min}"  
  end
end