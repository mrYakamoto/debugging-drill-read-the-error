require_relative "type_error"

describe 'print_and_sort' do
  before(:each) do 
    @output = StringIO.new
    $stdout = @output
  end
  
  let(:words) { %w{ all i can say is that my life is pretty plain } }
  let(:words_with_nil) { words.dup.insert(3, nil) }
  let(:mixed_array) { ["2", 1, "5", 4, "3"] }
 
  it "prints the array of words" do
    $stdout.should_receive(:puts).with("all i can say is that my life is pretty plain")
    print_and_sort(words)
  end
  
  it "prints the array of words with one nil object" do
  $stdout.should_receive(:puts).with("all i can  say is that my life is pretty plain")
    print_and_sort(words_with_nil)
  end
 
  it "sorts the array" do
    print_and_sort(words).should eq ["all", "can", "i", "is", "is", "life", "my", "plain", "pretty", "say", "that"]
  end
 
  it "treats nil elements as empty strings " do
    print_and_sort(words_with_nil).should eq ["", "all", "can", "i", "is", "is", "life", "my",  "plain", "pretty", "say", "that"]
  end
  
  it "sorts numbers and strings" do
    print_and_sort(mixed_array).should eq ["1","2","3","4","5"]
  end
  
  after(:each) do
    $stdout = STDOUT
  end
end