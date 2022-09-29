defmodule NatureTest do
  use ExUnit.Case, async: true
  alias Indigo.Nature, as: Nature

  test "list natures" do
    assert Nature.list() === [
             %Nature{name: "bashful"},
             %Nature{name: "brave", inc: :atk, dec: :spd}
           ]
  end

  test "get nature" do
    assert Nature.get("bashful") === %Nature{name: "bashful"}
    assert Nature.get("brave") === %Nature{name: "brave", inc: :atk, dec: :spd}
  end
end
