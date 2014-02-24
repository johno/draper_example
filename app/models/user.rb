class User < ActiveRecord::Base
  before_create :setup_analytics
  after_create :send_welcome_email
  after_save :send_confirmation_email, if: :email_changed?

  validates :website, url_format: true
  validates :email, email_format: true, 
                    presence: { message: "Please specify an email." }, 
                    uniqueness: { case_sensitive: false, 
                                  message: "That email has already been registered." }

  validates_presence_of :password

  default_scope -> { order(:last_name, :first_name) }

  def email_domain
    email.split(/@/).second
  end

  def website_domain
    UrlFormat.get_domain(url)
  end

  private

    def send_confirmation_email
      # ...
    end

    def send_welcome_email
      # ...
    end

    def setup_analytics
      # ...
    end
end
