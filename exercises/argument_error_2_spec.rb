describe "mean" do
  it "accepts any number of arguments" do
    method(:mean).arity.should eq -1
  end
    
  it "returns the correct mean" do
    mean(2,4,5,12).should eq(5)
    mean(-3,10,7).should eq(4)
  end
end
