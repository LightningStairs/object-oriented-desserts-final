class Cookie < BakedGood

  def bake!
    @amount += 12
    @amount
  end
end
