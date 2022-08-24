class Deck
attr_reader :cards, :high_ranking_cards

  def initialize(cards)
    @cards = cards
    @high_ranking_cards =[]
  end

  def rank_of_card_at(card)
    card.rank
  end

  def high_ranking_cards
    @high_ranking_cards = @cards.select do |card|
    card.rank >= 11
    end
  end

  def percentage_high_ranking
    high_rank_count = @high_ranking_cards.count
    card_count = @cards.count
    (Float(high_rank_count)/card_count * 100).round
  end

  def add_card(card)
     @cards << card
  end
end
