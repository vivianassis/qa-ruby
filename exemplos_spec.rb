# frozen_string_literal: true

# todos os testes com o rspec devem finalizar com o _spec.rb

describe 'swite exemplos' do
  it 'soma' do
    soma = 10 + 5
    expect(soma).to eql 15
  end
end
