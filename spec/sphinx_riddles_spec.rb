require ('rspec')
require('sphinx_riddles')
require ('pry')

describe('Riddles#riddle1_answer') do
  it('will return true if the answer to the riddle 1 contains the keyword') do
    riddle = Sphinx.new()
    expect(riddle.riddle_answer('A Man', 'feet')).to(eq(true))
  end

  it('will return true if the answer to the riddle 2 contains the keyword') do
    riddle = Sphinx.new()
    expect(riddle.riddle_answer('orange', 'citrus')).to(eq(true))
  end

  it('will return true if the answer to the riddle 3 contains the keyword') do
    riddle = Sphinx.new()
    expect(riddle.riddle_answer('A traffic light', 'freeze')).to(eq(true))
  end

  it('will return true if the answer to the riddle 4 contains the keyword') do
    riddle = Sphinx.new()
    expect(riddle.riddle_answer('A River', 'weeps')).to(eq(true))
  end

  it('will return true if the answer to the riddle 5 contains the keyword') do
    riddle = Sphinx.new()
    expect(riddle.riddle_answer('A SPONGE', 'holes')).to(eq(true))
  end
end
