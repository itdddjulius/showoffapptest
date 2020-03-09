module StubLogin
  def current_user
    '{
	  	              "code":0,
	  	              "message":"Success",
	  	              "data":{
	  	                 "token":{
	  	                    "access_token":"479c8407d69e5bbc5079936e13314b50971d7028a11994a3be83c8f89027835f",
	  	                    "token_type":"Bearer",
	  	                    "expires_in":2592000,
	  	                    "refresh_token":"6399bbcf509079f7565a30d06de245e5414e554d74328181f7fe4313bb256c29",
	  	                    "scope":"basic",
	  	                    "created_at":1549368326
	  	                 }
	  	              }
	  	           }'
  end
end

