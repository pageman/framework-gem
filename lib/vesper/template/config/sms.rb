set :sms_server, {
  account_number: '',
  account_sid: '',
  account_token: '',
  api_version: ''
}

# To send an sms via Twilio:
# account = Twilio::RestAccount.new(settings.sms_server[:account_sid], settings.sms_server[:account_token])
# msg = {
#   'From'  => settings.sms[:account_number],
#   'To'    => 'xxxxxxxxxxx',
#   'Body'  => 'Can you read me now?'
# }
# account.request("/#{settings.sms_server[:api_version]}/Accounts/#{settings.sms_server[:account_sid]}/SMS/Messages", 'POST', msg)