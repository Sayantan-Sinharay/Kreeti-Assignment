class Email
  private_class_method :new
  @email = nil

  def email
    return @email if @email
    puts "Error. No email is created"
  end

  def initialize(email)
    @email = email
  end

  def validation_message
    if is_valid?
      puts "Email successfully created!"
    else
      puts "Can not be created. Not a valid email!"
    end
  end

  def email_validation?
    validation_message
    is_valid?
  end

  def self.create(email)
    created = self.new(email)
    return created if created.email_validation?
    return self.new(nil)
  end

  private

  def is_valid?
    @email =~ /^[a-zA-Z]*(\w+\_?\.?)*\w[@]\w+[.][a-z]{1,4}$/
  end
end

my_email = Email.create("some.mail.id@domain.com")
puts my_email.email
bad_email = Email.create("a-bad-mail123@gmail.com")
puts bad_email.email
