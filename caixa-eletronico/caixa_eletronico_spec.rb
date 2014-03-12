require_relative 'caixa_eletronico'

describe CaixaEletronico do
  describe '#pagar' do
    it 'quando passar valor 100 deve devolver nota de 100' do
      caixa = CaixaEletronico.new
      
      notas = caixa.pagar(100)
      
      expect(notas.size).to eq(1)
      expect(notas.first).to eq(100)
    end
  end
end