class OrderNotifierMailer < ApplicationMailer
  default from: 'Akishev Kostua <card_shop@example.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.received.subject
  #
def received(order)
 @order = order
 mail to: order.email, subject: 'Подтверждение заказа в Card Shop'
end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.shipped.subject
  #
def shipped(order)
 @order = order
 mail to: order.email, subject: 'Заказ из Card Shop отправлен'
end
end
