require "./lib/palindrome"

describe Palindrome do
  describe "#palindrome?(string)" do
    it "should return true for empty string" do
      expect(subject.palindrome?("")).to be_true
    end
    it "should return true for string with one letter" do
      expect(subject.palindrome?("a")).to be_true
    end

    describe "two letter strings" do
      it "should return true for aa" do
        expect(subject.palindrome?("aa")).to be_true
      end

      it "should return false for ab" do
        expect(subject.palindrome?("ab")).to be_false
      end
    end

    describe "three letter strings" do
      it "should return true for aba" do
       expect(subject.palindrome?("aba")).to be_true
      end

      it "should return false for abc" do
        expect(subject.palindrome?("abc")).to be_false
      end
    end

    describe "common palindrome strings" do
      it "should return true for dad" do
        expect(subject.palindrome?("dad")).to be_true
      end

      it "should return true for radar" do
        expect(subject.palindrome?("radar")).to be_true
      end

      it "should return true for racecar" do
        expect(subject.palindrome?("racecar")).to be_true
      end

      it "should return false for doughnut" do
        expect(subject.palindrome?("doughnut")).to be_false
      end
    end

    describe "it handles symbols and white space" do
      it "should return false for $%!@#" do
        expect(subject.palindrome?("$%!@#")).to be_true
      end

      it "should know about a man, a plan, a canal, PANAMA!" do
        expect(subject.palindrome?("A man, a plan, a canal, PANAMA!")).to be_true
      end
    end

    describe "it handles numbers" do
      it "should return false for 1" do
        expect(subject.palindrome?(1)).to be_true
      end

      it "should return true for 11" do
        expect(subject.palindrome?(11)).to be_true
      end

      it "should return false for 12" do
        expect(subject.palindrome?(12)).to be_false
      end

      it "should return true for 121" do
        expect(subject.palindrome?(121)).to be_true
      end

      it "should return false for 123" do
        expect(subject.palindrome?(123)).to be_false
      end

      it "should return true for 32123" do
        expect(subject.palindrome?(32123)).to be_true
      end
    end
  end
end