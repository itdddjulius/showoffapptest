module StubShowoffAPI
  def stub_authentication
    WebMock.disable_net_connect!(allow: "showoff-rails-react-production.herokuapp.com")

    stub_request(:post, "https://showoff-rails-react-production.herokuapp.com/oauth/token").
      with(
      body: {
        "client_id" => "277ef29692f9a70d511415dc60592daf4cf2c6f6552d3e1b769924b2f2e2e6fe",
        "client_secret" => "d6106f26e8ff5b749a606a1fba557f44eb3dca8f48596847770beb9b643ea352",
        "grant_type" => "password",
        "password" => "password",
        "username" => "abhishekpshukla+a1@gmail.com",
      },
      headers: {
        'Content-Type': "application/json",
      },
    ).to_return(status: 200, body: authentication_response)
  end

  # def stub_widgets
  #   stub_request(:get, "https://showoff-rails-react-production.herokuapp.com/").
  #            with(
  #              headers: {
  #             'Accept'=>'*/*',
  #             'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
  #             'User-Agent'=>'Ruby'
  #              }).
  #            to_return(status: 200, body: "", headers: {})

  # end

  private

  def authentication_response
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

  def widget_response
    response = '{
      "code": 0,
      "message": "Success",
      "data": {
        "widgets": [
          {
            "id": 4,
            "name": "A Visible Widget",
            "description": "Widget 1",
            "kind": "visible",
            "user": {
              "id": 1,
              "name": "A User",
              "images": {
                "small_url": "https://showoff-rails-react-api-production.s3.amazonaws.com/users/images/000/000/001/small/961-200.png?1549366177",
                "medium_url": "https://showoff-rails-react-api-production.s3.amazonaws.com/users/images/000/000/001/medium/961-200.png?1549366177",
                "large_url": "https://showoff-rails-react-api-production.s3.amazonaws.com/users/images/000/000/001/large/961-200.png?1549366177",
                "original_url": "https://showoff-rails-react-api-production.s3.amazonaws.com/users/images/000/000/001/original/961-200.png?1549366177"
              },
              "first_name": "A",
              "last_name": "User"
            },
            "owner": false
          }
        ]
      }
    }'
  end
end

