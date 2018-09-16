defmodule Wechat.SNS do
  @moduledoc false

  alias Wechat.Config

  use Wechat.HTTP, host: Config.config[:sns_host]

  def jscode2session(code) do
    get "jscode2session", %{
      appid: Config.appid,
      secret: Config.secret,
      js_code: code,
      grant_type: "authorization_code",
    }
  end

  def oauth2accesstoken(code) do
    get "oauth2/access_token", %{
      appid: Config.appid,
      secret: Config.secret,
      code: code,
      grant_type: "authorization_code",
    }
  end
end
