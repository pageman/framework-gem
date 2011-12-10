set :mail_server, {
  address: 'smtp.gmail.com',
  port: '587',
  enable_starttls_auto: true,
  user_name: '',
  password: '',
  authentication: :plain
}

# To send email via GMail:
# Pony.mail(via: :smtp, via_options: settings.mail_server,
#   to: 'you@example.com',
#   subject:'This is a sample email',
#   body: 'Can you read me now?'
# )