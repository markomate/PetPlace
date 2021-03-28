class DonationsController < ApplicationController
  def index
    # Checks to see if user is signed in and has filled out their profile page
    if user_signed_in? && !current_user.profile.nil?
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        customer_email: current_user.email,
        line_items: [{
          name: "Thank you #{current_user.profile.name}, we really appreciate your support! :)",
          amount: 200,
          currency: 'aud',
          quantity: 1,
        }],
        success_url: "#{root_url}donations/success",
        cancel_url: "#{root_url}donations",
      )
      @session_id = session.id
    else
      redirect_to '/', notice: "Please register and create a profile first :)!"
    end
  end

  def success
  end
end
