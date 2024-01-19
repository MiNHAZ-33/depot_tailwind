class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject

  default from: "Minhaz <miminhaz33@gmail.com>"

  def received(order)
   @order = order

   mail to: order.email, subject: 'Book Store Order Confirmation' do |format|
    format.text
    format.html
   end

  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
