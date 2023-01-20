# frozen_string_literal: true

# Teste Avengers
class AvengersHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avenger)
    list.push(avenger)
  end
end

# #TDD (Desenvolvimento acima foi guiado pelo teste abaixo)
describe AvengersHeadQuarter do
  it 'deve adicionar vingador' do
    hq = AvengersHeadQuarter.new

    hq.put('Spiderman')
    expect(hq.list).to eql ['Spiderman']
  end

  it 'deve adicionar na lista de vingadores' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')

    # .to include é o verificador para 'contém' do rspec
    expect(hq.list).to include 'Thor'
  end

  it 'deve verificar tamanho da lista de vingadores' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')

    # .to include é o verificador para 'contém' do rspec
    expect(hq.list).to include 'Thor'

    # podemos guardar o item em variável e então verificar se ele é verdadeiro(ou falso)
    res = hq.list.size.positive?
    expect(res).to be true
  end

  it 'Thor deve ser o primeiro da lista' do
    hq = AvengersHeadQuarter.new

    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')

    expect(hq.list).to start_with('Thor')
  end

  it 'Thor deve ser o primeiro da lista' do
    hq = AvengersHeadQuarter.new

    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')
    hq.put('Ironman')

    expect(hq.list).to end_with('Ironman')
  end

  # verificação de match para expressão regular com variável
  it 'deve conter o sobrenome' do
    
    avenger = 'Peter Parker'

    expect(avenger).to match(/Parker/)
    expect(avenger).not_to match(/Stark/)
  end
end
