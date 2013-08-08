Griddler.configure do |config|
  config.processor_class = EmailProcessor # MyEmailProcessor
  config.to = :token # :full, :email, :hash
    raw: "Postmark <ee50015884ff7c243efafa6ca30e79e6@inbound.postmarkapp.com>"
    email: "ee50015884ff7c243efafa6ca30e79e6@inbound.postmarkapp.com"
    token: "ee50015884ff7c243efafa6ca30e79e6"
    hash: { raw: '', email: '', token: '', host: '' }
  config.reply_delimiter = '-- REPLY ABOVE THIS LINE --'
  config.email_service = :postmark
end
