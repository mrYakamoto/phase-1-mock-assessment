require_relative '../warmup'

describe "Say Bye" do
  it "should add the name" do
    expect(say_bye("Morgan")).to eq("Bye, Morgan!")
  end

  it "should not be hard-coded" do
    expect(say_bye("Yu")).to eq("Bye, Yu!")
  end

  it "should work on empty input" do
    expect(say_bye("")).to eq("Bye!")
  end

  it "should accept a default argument" do
    expect{say_bye}.not_to raise_error
    expect(say_bye).to eq("Bye!")
  end
end

describe "Sum Value" do
  let(:sample) { {:key1 => 1, :key2 => 5, :key3 => 10} }
  let(:malformed) { {1 => :value1, 5 => :value2, 10 => :value3} }

  it "sums the values" do
    expect(sum_values(sample)).to eq(16)
  end

  it "errors out on bad input" do
    expect{sum_values(malformed)}.to raise_error(NoMethodError)
  end
end

describe "Difference Two Biggest" do
  let(:tiebreaker) { [1,5,9,9] }
  let(:standard) { [4,8,15,16,23,42] }

  it "returns 0 when array is empty or nil" do
    expect(difference_two_biggest([])).to eq(0)
    expect(difference_two_biggest(nil)).to eq(0)
  end

  it "returns the element when there is only 1" do
    expect(difference_two_biggest([5])).to eq(5)
    expect(difference_two_biggest([10])).to eq(10)
  end

  it "returns the correct difference when top two are different" do
    expect(difference_two_biggest(standard)).to eq(19)
  end

  it "returns the correct difference when top two are the same" do
    expect(difference_two_biggest(tiebreaker)).to eq(0)
  end
end
