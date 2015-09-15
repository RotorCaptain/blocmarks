class Application < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.application.views.subject
  #
  def views
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
