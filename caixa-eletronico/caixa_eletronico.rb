class CaixaEletronico
  def pagar(valor)
    
    return "Não é possível pagar #{valor}" if valor % 5 > 0
    
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