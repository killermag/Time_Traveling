require './lib/CaesarCipher.rb'
require 'pry-byebug'

describe "#caesar_cipher" do 
  it "works with downcase" do 
    expect(caesar_cipher("car full",4)).to eq("gev jypp")
  end

  it "its Non-case-sensitive" do 
    expect(caesar_cipher('Multi_throw',5)).to eq('Rzqyn_ymwtb') 
  end
  
  it "works with uppercase" do 
    expect(caesar_cipher("MUNCH",19)).to eq("FNGVA") 
  end 

  it "does not alter any special characters or whitespaces" do 
    expect(caesar_cipher("$opt# &(ro",5)).to eq("$tuy# &(wt")
  end  

end 