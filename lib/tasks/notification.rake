namespace :notification do
  desc "Send SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    #1. schedule to run at Sunday at 5pm
    #2. Iterate over all employees
    #3. Skip Admin users
    #4. Send a message that has instructions and a link to log time

    #User.all.each do |user|
     # SmsTool.send_sms()
    #end
    number: "555-555-3323"
    number: "5555553323"
    #空白禁止
    #10個のキャラクターを利用すること
    #全てのキャラクターは数字を利用すること

  end

end
