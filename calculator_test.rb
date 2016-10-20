require 'minitest/autorun'
require_relative 'calculator'
describe 'calculate' do
  def setup
    @calculator = Calculator.new
  end

  it 'sums correctly' do
    res = @calculator.calculate_answer('add','2','2')
    assert(res == 4)
  end

  it 'substracts correctly' do
    res = @calculator.calculate_answer('subtract','2','2')
    assert(res == 0)
  end
  it 'divides correctly' do
    res = @calculator.calculate_answer('divide','2','2')
    assert(res == 1)
  end
  it 'doesnt divide by 0' do
    res = @calculator.calculate_answer('divide','2','0')
    assert(res == 'undefined')
  end
  it 'multiply correctly' do
    res = @calculator.calculate_answer('multiply','3','4')
    assert(res == 12)
  end

  it 'discriminates input' do
    res = @calculator.calculate_answer('add','perro','2')
    assert(res == 'error')
  end
end


describe 'request calculation type' do
  def setup
    @calculator = Calculator.new
  end
  it 'returns add' do
    res = @calculator.request_calculation_type(1)
    assert(res == 'add')
  end
  it 'returns sub' do
    res = @calculator.request_calculation_type(2)
    assert(res == 'subtract')
  end
  it 'returns multiply' do
    res = @calculator.request_calculation_type(3)
    assert(res == 'multiply')
  end
  it 'returns divide' do
    res = @calculator.request_calculation_type(4)
    assert(res == 'divide')
  end
  it 'returns error' do
    res = @calculator.request_calculation_type(5)
    assert(res == 'error')
  end
end

describe 'gets name' do
  def setup
    @calculator = Calculator.new
  end
  it'correctly gets name' do
    name_ = @calculator.greeting
    assert(name_ == "test")
  end
end


