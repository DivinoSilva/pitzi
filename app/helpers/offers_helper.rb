module OffersHelper
  def options_for_offer_select
    options_for_select(
      Offer.all.map{ |o| ["#{o.annual_value}","#{o.id}"]}
    )
  end
end