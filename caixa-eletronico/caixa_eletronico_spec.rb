require_relative 'caixa_eletronico'

describe CaixaEletronico do
  describe '#pagar' do
    it 'quando passar valor 100 deve devolver nota de 100' do
      caixa = CaixaEletronico.new
      
      notas = caixa.pagar(100)
      
      expect(notas.size).to eq(1)
      expect(notas.first).to eq(100)
    end
    
    it 'quando passar valor 300 deve devolver 3 notas de 100' do
      caixa = CaixaEletronico.new
      
      notas = caixa.pagar(300)
      
      expect(notas.size).to eq(3)
      expect(notas).to eq([100,100,100])
    end
    
    it 'quando passar valor 50 deve devolver 1 nota de 50' do
      caixa = CaixaEletronico.new
      
      notas = caixa.pagar(50)
      
      expect(notas.size).to eq(1)
      expect(notas).to eq([50])
    end
  
    it 'quando passar valor 250 deve devolver 2 notas de 100 e 1 nota de 50' do
      caixa = CaixaEletronico.new
      
      notas = caixa.pagar(250)
      
      expect(notas.size).to eq(3)
      expect(notas).to eq([100,100,50])
    end
   
    it 'quando passar valor 270 deve devolver 2 notas de 100 e 1 nota de 50 e 1 de vinte' do
      caixa = CaixaEletronico.new
      
      notas = caixa.pagar(270)
      
      expect(notas.size).to eq(4)
      expect(notas).to eq([100,100,50,20])
    end
    
    it 'quando passar valor 285 deve devolver 2 notas de 100, 1 nota de 50, 1 nota de vinte, 1 de 10 e 1 de 5' do
      caixa = CaixaEletronico.new
      
      notas = caixa.pagar(285)
      
      expect(notas.size).to eq(6)
      expect(notas).to eq([100,100,50,20,10,5])
    end
   
  end
end