require "Twitter"

Twitter.configure do |config|
	config.consumer_key = "3LVmZzqPwJW3Bh1VFPyA"
	config.consumer_secret = "T4FfIoEq3p9T3pCJpCj2K8sAJiv4sPItyBXASshG5wc"
	config.oauth_token = "453474623-bonQEcY5khzdGfWyqjqfcAb4X5HP5ywLszcE1CWs"
	config.oauth_token_secret = "bSfuWK3KCPHYq4Za4M1iUM6YGHk165eS8znLFFk0rk"
end

Twitter.home_timeline.each do |text|
	puts text.text
end

