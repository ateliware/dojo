class CaixaEletronico
  def pagar(valor)
    notas=[100,50,20,10,5]
    
    array = []
    saldo = valor
    
    notas.each do |nota|
      while(saldo >= nota)        
        array.push(nota)
        saldo -= nota
        break if saldo < nota
      end      
    end
      
    array
  end
end