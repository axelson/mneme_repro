defmodule MnemeRepro do
  def hello do
    # started_at = ~D[2023-11-04]
    started_at =
      ~N[2023-11-04 00:00:00]
      |> DateTime.from_naive!("Etc/UTC")
      |> DateTime.shift_zone!("Pacific/Honolulu")

    [
      %{
        :started_at => started_at,
        :total_seconds => "1800"
      }
    ]
    |> IO.inspect(label: "result (structs: true)", structs: true)
    |> IO.inspect(label: "result (structs: false)", structs: false)
  end
end
