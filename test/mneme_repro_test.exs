defmodule MnemeReproTest do
  use ExUnit.Case, async: true
  use Mneme

  test "repro" do
    auto_assert([%{started_at: nil, total_seconds: "1800"}] <- MnemeRepro.hello())
  end
end
