# coding: utf-8
# frozen_string_literal: true
class BonusDrink
  X = 3
  def self.total_count_for(drinks, carried_bottles = 0)
    drinks = drinks.to_i
    return 0 if drinks < 1
    total_bottles = drinks + carried_bottles
    return drinks if total_bottles < X
    bonus_drinks, next_carried_bottles = total_bottles.divmod(X)
    drinks + total_count_for(bonus_drinks, next_carried_bottles)
  end
end
