RSpec.describe ClassnamesHelper, type: :helper do
  describe "#classnames with no arguments given" do
    subject { helper.classnames }
    it { should eq("") }
  end

  describe "#classnames with one blank string given" do
    subject { helper.classnames(" ") }
    it { should eq("") }
  end

  describe "#classnames with one string given" do
    subject { helper.classnames("one") }
    it { should eq("one") }
  end

  describe "#classnames with two strings given" do
    subject { helper.classnames("one", "two") }
    it { should eq("one two") }
  end

  describe "#classnames with one string and one falsy conditional arguments given" do
    subject { helper.classnames("one", two: false) }
    it { should eq("one") }
  end

  describe "#classnames with one string and one truthy conditional arguments given" do
    subject { helper.classnames("one", two: true) }
    it { should eq("one two") }
  end

  describe "#classnames with several arguments given" do
    subject { helper.classnames("one", "two", three: false, four: true, five: true) }
    it { should eq("one two four five") }
  end

  describe "#classnames with several arguments given in different order" do
    subject { helper.classnames("one", { three: false, four: true }, "two", five: true) }
    it { should eq("one four two five") }
  end

  describe "#classnames with unsupported values" do
    subject { helper.classnames("one", { three: nil, five: 0, six: 1, four: true, seven: "abc" }, 0, 1, nil, false, "") }
    it { should eq("one four") }
  end

  describe "#classnames with array" do
    subject { helper.classnames("one", ["two", { three: true, four: false }]) }
    it { should eq("one two three") }
  end

  describe "#classnames with recursive array" do
    subject { helper.classnames("one", ["two", { three: true, four: false }, ["five"]]) }
    it { should eq("one two three five") }
  end
end
