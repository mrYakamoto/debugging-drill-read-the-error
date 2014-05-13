require_relative "syntax_error"


describe "sample_avg" do

  it "returns the correct calculated mean" do
    sample_avg.should eq(6)
  end
end