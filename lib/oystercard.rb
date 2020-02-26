class OysterCard

  attr_reader :balance
  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(value)
    raise "Maximum balance of #{MAXIMUM_BALANCE} exceeded" if @balance + value > MAXIMUM_BALANCE
    @balance += value
  end

  def deduct(amount)
    @balance -= amount
  end

  def touch_in
    raise "Not enough balance" if @balance <= MINIMUM_BALANCE
    @in_journey = true
  end

  def touch_out
    @in_journey = false
  end

  def in_journey?
    # => !! forces a predicate method to return ONLY true or false (no NIL)
    !!@in_journey
  end

end
