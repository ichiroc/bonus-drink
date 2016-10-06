# frozen_string_literal: true
require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
  specify { expect(BonusDrink.total_count_for(1)).to eq 1 }
  specify { expect(BonusDrink.total_count_for(2)).to eq 2 }
  specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
  specify { expect(BonusDrink.total_count_for(4)).to eq 5 }
  specify { expect(BonusDrink.total_count_for(5)).to eq 7 }
  specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
  specify { expect(BonusDrink.total_count_for(20)).to eq 29 }
  specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
  specify { expect(BonusDrink.total_count_for(nil)).to eq 0 }
  specify { expect(BonusDrink.total_count_for(-1)).to eq 0 }
  specify { expect(BonusDrink.total_count_for(1.0)).to eq 1 }
  specify { expect(BonusDrink.total_count_for(100.0)).to eq 149 }
  specify { expect(BonusDrink.total_count_for('100.0')).to eq 149 }
  specify { expect(BonusDrink.total_count_for('aaaa')).to eq 0 }
end
