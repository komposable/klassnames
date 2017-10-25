RSpec.describe ClassnamesHelper, type: :helper do
  describe "#classnames with no arguments given" do
    subject { helper.classnames }
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
end
