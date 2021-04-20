# Page_Controller.ex
# This module calls index action to display to emit
# a telemetry event.
#
# Created by Thitiporn Sukpartcharoen
#
# 19 April 2021

defmodule ChallengePhoenixWeb.PageController do
  use ChallengePhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
    :telemetry.execute([:metrics_demo, :render], %{controller: "PageController", action: "index"})
  end
end
