# Preview all emails at http://localhost:3000/rails/mailers/application
class ApplicationPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/application/views
  def views
    Application.views
  end

end
