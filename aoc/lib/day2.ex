defmodule Day2 do 
    def checksum1(rows) when is_list rows do
        rows
        |> Enum.map(fn(x) -> Enum.max(x) - Enum.min(x) end)
        |> Enum.sum
    end

    def checksum2()

end