class Prestamo < ActiveRecord::Base
  attr_accessible :cantcuotas, :montoprestamo, :id, :tasainteres, :socio_id, :sistema
  belongs_to :socio
  has_many :loan_details

  after_save :generar_cuotas_interes_frances
   #   after_save self.sistema=="frances" ? :generar_cuotas_interes_frances : :generar_cuotas_interes_aleman

  

  self.per_page = 10

# set per_page globally
  WillPaginate.per_page = 10

   def self.search(search)
    if search
      where('id=?', "#{search}")
    else
      scoped
    end
  end


  protected
  
  def generar_cuotas_interes_aleman
    n=self.cantcuotas
    m=self.montoprestamo
    i=((self.tasainteres/100)).round(3) #TNA
    amortizacion=m/n
    num=0
    t=Time.now
    n.times{
      interes=(m*i).round(2)
      montocuota=(amortizacion+interes).round
      m=m-amortizacion
      num+=1
      t+=1.months
      LoanDetail.create(
        :interes=>interes,
        :amortizacion=>amortizacion,
        :montocuota=>montocuota,
        :saldoactual=>m,
        :prestamo_id=>self.id,
        :fechavcuota=>t,
        :numerocuota=>num,
        :estado=>'.'
        )
    }
  end

  def generar_cuotas_interes_frances
      n=self.cantcuotas    #cantidad de cuotas n
      i=((self.tasainteres/100)/12).round(3)  #tasa = %interesanual/100/ 12 meses del año
      x=((i*(1+i)**n)/(((1+i)**n)-1)).round(12)  #factor(a) varia dependiendo de i
      monto=self.montoprestamo
      cuotamensual=(monto*x).round(3)                #el monto de la cuota se obtiene de multiplicar el factor obtenido por el monto
      t=Time.now
      num=0
        n.times{
            aux=monto
            amortizacion=(cuotamensual-(aux*i)).round(3)
            monto=(monto-amortizacion).round(0)
            
            interes=(aux*i).round(2)
            num+=1
            t+=1.months
            
      	  	LoanDetail.create(
      	 		:montocuota=>cuotamensual,
            :interes=>interes,
            :amortizacion=>amortizacion,
            :saldoactual=>monto,
      	  	:prestamo_id=>self.id,
            :fechavcuota=>t,
            :numerocuota=>num,
            :estado=>'.'
      	  		)
        }
  end
  

end
