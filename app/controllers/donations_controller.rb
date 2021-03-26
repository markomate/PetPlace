class DonationsController < ApplicationController
  def index
    # @amount = 500

    # customer = Stripe::Customer.create({
    #   email: params[:stripeEmail],
    #   source: params[:stripeToken],
    # })

    # charge = Stripe::Charge.create({
    #   customer: customer.id,
    #   name: "#{current_user.profile.name}'s donation!",
    #   amount: @amount,
    #   description: 'PetPlace appreciates your donations!',
    #   currency: 'aud',
    # })

    # rescue Stripe::CardError => e
    #   flash[:error] = e.message
    #   redirect_to root_url
    # end
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: current_user.email,
      line_items: [{
        name: "#{current_user.profile.name}'s donation!",
        amount: 500,
        currency: 'aud',
        quantity: 1,
      }],
      success_url: "#{root_url}donations/success",
      cancel_url: "#{root_url}donations",
    )
    @session_id = session.id
  end

  def success
  end
end
