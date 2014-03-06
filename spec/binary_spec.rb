require('rspec')
require('binary')

describe('binary') do
  it('returns 0 for 0') do
    binary(0).should(eq(0))
  end
  it('returns 1 for 1') do
    binary(1).should(eq(1))
  end
  it('returns 10 for 2') do
    binary(2).should(eq(10))
  end
  it('returns 110 for 6') do
    binary(6).should(eq(110))
  end
  it('returns 1100 for 12') do
    binary(12).should(eq(1100))
  end
end
