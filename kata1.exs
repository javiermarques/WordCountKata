

words = String.split("olly olly in come free", " ")

words |> Enum.at(2) |> IO.puts

#Enum.into(words, %{}) |> IO.puts

List.foldr(words, %{}, fn(x, acc) ->
    if Map.has_key?(acc,x) do
        counter = acc[x] + 1
        Map.put(acc,x,counter)
    else
        Map.put(acc,x,1)
    end
end) |> IO.inspect



