require "./lib/palindrome"

describe Palindrome do
  describe "#palindrome?(string)" do
    it "should return false for empty string" do
      expect(subject.palindrome?("")).to be_false
    end
    it "should return true for string with one letter" do
      expect(subject.palindrome?("a")).to be_true
    end
    it "should return true for aa" do
      expect(subject.palindrome?("aa")).to be_true
    end
    it "should return true for aba" do
      expect(subject.palindrome?("aba")).to be_true
    end
    it "should return true for radar" do
      expect(subject.palindrome?("radar")).to be_true
    end
    it "should return false for doughnut" do
      expect(subject.palindrome?("doughnut")).to be_false
    end
    it "should know about PANAMA!" do
      expect(subject.palindrome?("A man, a plan, a canal, PANAMA!")).to be_true
    end
    it "should return false for $%!@#" do
      expect(subject.palindrome?("$%!@#")).to be_false
    end
  end
end