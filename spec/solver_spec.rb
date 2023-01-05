# spec/solver_spec.rb
require "rspec"
require "solver"

RSpec.describe Solver do
  subject(:solver) { described_class.new }

  describe "#factorial" do
    context "when given a negative integer" do
      it "raises an exception" do
        expect { solver.factorial(-1) }.to raise_error("factorial is not defined for negative integers")
      end
    end

    context "when given 0" do
      it "returns 1" do
        expect(solver.factorial(0)).to eq(1)
      end
    end

    context "when given a positive integer" do
      it "returns the factorial of the integer" do
        expect(solver.factorial(1)).to eq(1)
        expect(solver.factorial(2)).to eq(2)
        expect(solver.factorial(3)).to eq(6)
        expect(solver.factorial(4)).to eq(24)
      end
    end
  end

  describe "#reverse" do
    it "returns the string reversed" do
      expect(solver.reverse("hello")).to eq("olleh")
      expect(solver.reverse("world")).to eq("dlrow")
    end
  end

  describe "#fizzbuzz" do
    context "when n is divisible by 3" do
      it "returns 'fizz'" do
        expect(solver.fizzbuzz(3)).to eq("fizz")
        expect(solver.fizzbuzz(6)).to eq("fizz")
      end
    end

    context "when n is divisible by 5" do
      it "returns 'buzz'" do
        expect(solver.fizzbuzz(5)).to eq("buzz")
        expect(solver.fizzbuzz(10)).to eq("buzz")
      end
    end

    context "when n is divisible by 3 and 5" do
      it "returns 'fizzbuzz'" do
        expect(solver.fizzbuzz(15)).to eq("fizzbuzz")
      end
    end

    context "when n is not divisible by 3 or 5" do
        it "returns n as a string" do
          expect(solver.fizzbuzz(1)).to eq("1")
          expect(solver.fizzbuzz(2)).to eq("2")
          expect(solver.fizzbuzz(7)).to eq("7")
        end
      end
    end
  end
  
