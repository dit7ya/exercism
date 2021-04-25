defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]

  def to_rna(dna) do
    nucle_map = %{?G => ?C, ?C => ?G, ?A => ?U, ?T => ?A}
    dna |> Enum.map(fn x -> nucle_map[x] end)
  end
end

# to_rna('ATGC')
