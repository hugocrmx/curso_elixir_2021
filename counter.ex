defmodule Counter do
    
    def frequencies(text) do
        text
         |> String.split()
         |> count_words()
    end

    def count_words(words_list) do
        Enum.reduce(words_list, %{}, fn word, acc_map ->
            Map.update(acc_map, String.to_atom(word), 1, fn x -> x + 1 end) end)
    end  
end