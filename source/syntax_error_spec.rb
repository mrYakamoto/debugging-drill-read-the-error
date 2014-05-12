require_relative "syntax_error"


describe "sample_avg" do

  it "correctly stores the calculated mean in a variable" do
    sample_avg.should eq(6)
  end
end