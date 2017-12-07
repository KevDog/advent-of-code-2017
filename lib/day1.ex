defmodule Day1 do

    def checksum(data)  do
        data
        |>  Integer.digits
        |>  checksum(0)
    end    

    def checksum([first | last], acc) do
        checksum(first, last, acc, first)
    end

    def checksum(last, [next | rest], acc, first) do
        acc = case last == next do
                true ->  acc + last
                false -> acc    
                end
        checksum(next, rest, acc, first )
    end

    def checksum(last, [], acc, first) do
        acc =   case last == first do
                    true -> acc + last
                    false -> acc
                end
        acc
    end

    
end