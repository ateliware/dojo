class CaixaEletronico
  def pagar(valor)
    if valor % 100 == 0
      resultado = valor / 100
      array = []
      resultado.times do
        array.push 100
        end
    elsif valor % 50 == 0
      resultado = valor / 50
      array = []
      resultado.times do
        array.push 50
      end
    end  
    array
    
  end
end