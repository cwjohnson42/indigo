defmodule TypeTest do
  use ExUnit.Case, async: true
  alias Indigo.Type, as: Type

  test "type matchups" do
    # +-------------------+
    # |  Gen 6+ matchups  |
    # +-------------------+

    # Bug vs.
    assert Type.dmg_mult(:bug, :bug) === 1.0
    assert Type.dmg_mult(:bug, :dark) === 2.0
    assert Type.dmg_mult(:bug, :dragon) === 1.0
    assert Type.dmg_mult(:bug, :electric) === 1.0
    assert Type.dmg_mult(:bug, :fairy) === 0.5
    assert Type.dmg_mult(:bug, :fighting) === 0.5
    assert Type.dmg_mult(:bug, :fire) === 0.5
    assert Type.dmg_mult(:bug, :flying) === 0.5
    assert Type.dmg_mult(:bug, :ghost) === 0.5
    assert Type.dmg_mult(:bug, :grass) === 2.0
    assert Type.dmg_mult(:bug, :ground) === 1.0
    assert Type.dmg_mult(:bug, :ice) === 1.0
    assert Type.dmg_mult(:bug, :normal) === 1.0
    assert Type.dmg_mult(:bug, :poison) === 0.5
    assert Type.dmg_mult(:bug, :psychic) === 2.0
    assert Type.dmg_mult(:bug, :rock) === 1.0
    assert Type.dmg_mult(:bug, :steel) === 0.5
    assert Type.dmg_mult(:bug, :water) === 1.0

    # Dark vs.
    assert Type.dmg_mult(:dark, :bug) === 1.0
    assert Type.dmg_mult(:dark, :dark) === 0.5
    assert Type.dmg_mult(:dark, :dragon) === 1.0
    assert Type.dmg_mult(:dark, :electric) === 1.0
    assert Type.dmg_mult(:dark, :fairy) === 0.5
    assert Type.dmg_mult(:dark, :fighting) === 0.5
    assert Type.dmg_mult(:dark, :fire) === 1.0
    assert Type.dmg_mult(:dark, :flying) === 1.0
    assert Type.dmg_mult(:dark, :ghost) === 2.0
    assert Type.dmg_mult(:dark, :grass) === 1.0
    assert Type.dmg_mult(:dark, :ground) === 1.0
    assert Type.dmg_mult(:dark, :ice) === 1.0
    assert Type.dmg_mult(:dark, :normal) === 1.0
    assert Type.dmg_mult(:dark, :poison) === 1.0
    assert Type.dmg_mult(:dark, :psychic) === 2.0
    assert Type.dmg_mult(:dark, :rock) === 1.0
    assert Type.dmg_mult(:dark, :steel) === 1.0
    assert Type.dmg_mult(:dark, :water) === 1.0

    # Dragon vs.
    assert Type.dmg_mult(:dragon, :bug) === 1.0
    assert Type.dmg_mult(:dragon, :dark) === 1.0
    assert Type.dmg_mult(:dragon, :dragon) === 2.0
    assert Type.dmg_mult(:dragon, :electric) === 1.0
    assert Type.dmg_mult(:dragon, :fairy) === 0.0
    assert Type.dmg_mult(:dragon, :fighting) === 1.0
    assert Type.dmg_mult(:dragon, :fire) === 1.0
    assert Type.dmg_mult(:dragon, :flying) === 1.0
    assert Type.dmg_mult(:dragon, :ghost) === 1.0
    assert Type.dmg_mult(:dragon, :grass) === 1.0
    assert Type.dmg_mult(:dragon, :ground) === 1.0
    assert Type.dmg_mult(:dragon, :ice) === 1.0
    assert Type.dmg_mult(:dragon, :normal) === 1.0
    assert Type.dmg_mult(:dragon, :poison) === 1.0
    assert Type.dmg_mult(:dragon, :psychic) === 1.0
    assert Type.dmg_mult(:dragon, :rock) === 1.0
    assert Type.dmg_mult(:dragon, :steel) === 0.5
    assert Type.dmg_mult(:dragon, :water) === 1.0

    # Electric vs.
    assert Type.dmg_mult(:electric, :bug) === 1.0
    assert Type.dmg_mult(:electric, :dark) === 1.0
    assert Type.dmg_mult(:electric, :dragon) === 0.5
    assert Type.dmg_mult(:electric, :electric) === 0.5
    assert Type.dmg_mult(:electric, :fairy) === 1.0
    assert Type.dmg_mult(:electric, :fighting) === 1.0
    assert Type.dmg_mult(:electric, :fire) === 1.0
    assert Type.dmg_mult(:electric, :flying) === 2.0
    assert Type.dmg_mult(:electric, :ghost) === 1.0
    assert Type.dmg_mult(:electric, :grass) === 0.5
    assert Type.dmg_mult(:electric, :ground) === 0.0
    assert Type.dmg_mult(:electric, :ice) === 1.0
    assert Type.dmg_mult(:electric, :normal) === 1.0
    assert Type.dmg_mult(:electric, :poison) === 1.0
    assert Type.dmg_mult(:electric, :psychic) === 1.0
    assert Type.dmg_mult(:electric, :rock) === 1.0
    assert Type.dmg_mult(:electric, :steel) === 1.0
    assert Type.dmg_mult(:electric, :water) === 2.0

    # Fairy vs.
    assert Type.dmg_mult(:fairy, :bug) === 1.0
    assert Type.dmg_mult(:fairy, :dark) === 2.0
    assert Type.dmg_mult(:fairy, :dragon) === 2.0
    assert Type.dmg_mult(:fairy, :electric) === 1.0
    assert Type.dmg_mult(:fairy, :fairy) === 1.0
    assert Type.dmg_mult(:fairy, :fighting) === 2.0
    assert Type.dmg_mult(:fairy, :fire) === 0.5
    assert Type.dmg_mult(:fairy, :flying) === 1.0
    assert Type.dmg_mult(:fairy, :ghost) === 1.0
    assert Type.dmg_mult(:fairy, :grass) === 1.0
    assert Type.dmg_mult(:fairy, :ground) === 1.0
    assert Type.dmg_mult(:fairy, :ice) === 1.0
    assert Type.dmg_mult(:fairy, :normal) === 1.0
    assert Type.dmg_mult(:fairy, :poison) === 0.5
    assert Type.dmg_mult(:fairy, :psychic) === 1.0
    assert Type.dmg_mult(:fairy, :rock) === 1.0
    assert Type.dmg_mult(:fairy, :steel) === 0.5
    assert Type.dmg_mult(:fairy, :water) === 1.0

    # Fighting vs.
    assert Type.dmg_mult(:fighting, :bug) === 0.5
    assert Type.dmg_mult(:fighting, :dark) === 2.0
    assert Type.dmg_mult(:fighting, :dragon) === 1.0
    assert Type.dmg_mult(:fighting, :electric) === 1.0
    assert Type.dmg_mult(:fighting, :fairy) === 0.5
    assert Type.dmg_mult(:fighting, :fighting) === 1.0
    assert Type.dmg_mult(:fighting, :fire) === 1.0
    assert Type.dmg_mult(:fighting, :flying) === 0.5
    assert Type.dmg_mult(:fighting, :ghost) === 0.0
    assert Type.dmg_mult(:fighting, :grass) === 1.0
    assert Type.dmg_mult(:fighting, :ground) === 1.0
    assert Type.dmg_mult(:fighting, :ice) === 2.0
    assert Type.dmg_mult(:fighting, :normal) === 2.0
    assert Type.dmg_mult(:fighting, :poison) === 0.5
    assert Type.dmg_mult(:fighting, :psychic) === 0.5
    assert Type.dmg_mult(:fighting, :rock) === 2.0
    assert Type.dmg_mult(:fighting, :steel) === 2.0
    assert Type.dmg_mult(:fighting, :water) === 1.0

    # Fire vs.
    assert Type.dmg_mult(:fire, :bug) === 2.0
    assert Type.dmg_mult(:fire, :dark) === 1.0
    assert Type.dmg_mult(:fire, :dragon) === 0.5
    assert Type.dmg_mult(:fire, :electric) === 1.0
    assert Type.dmg_mult(:fire, :fairy) === 1.0
    assert Type.dmg_mult(:fire, :fighting) === 1.0
    assert Type.dmg_mult(:fire, :fire) === 0.5
    assert Type.dmg_mult(:fire, :flying) === 1.0
    assert Type.dmg_mult(:fire, :ghost) === 1.0
    assert Type.dmg_mult(:fire, :grass) === 2.0
    assert Type.dmg_mult(:fire, :ground) === 1.0
    assert Type.dmg_mult(:fire, :ice) === 2.0
    assert Type.dmg_mult(:fire, :normal) === 1.0
    assert Type.dmg_mult(:fire, :poison) === 1.0
    assert Type.dmg_mult(:fire, :psychic) === 1.0
    assert Type.dmg_mult(:fire, :rock) === 0.5
    assert Type.dmg_mult(:fire, :steel) === 2.0
    assert Type.dmg_mult(:fire, :water) === 0.5

    # Flying vs.
    assert Type.dmg_mult(:flying, :bug) === 2.0
    assert Type.dmg_mult(:flying, :dark) === 1.0
    assert Type.dmg_mult(:flying, :dragon) === 1.0
    assert Type.dmg_mult(:flying, :electric) === 0.5
    assert Type.dmg_mult(:flying, :fairy) === 1.0
    assert Type.dmg_mult(:flying, :fighting) === 2.0
    assert Type.dmg_mult(:flying, :fire) === 1.0
    assert Type.dmg_mult(:flying, :flying) === 1.0
    assert Type.dmg_mult(:flying, :ghost) === 1.0
    assert Type.dmg_mult(:flying, :grass) === 2.0
    assert Type.dmg_mult(:flying, :ground) === 1.0
    assert Type.dmg_mult(:flying, :ice) === 1.0
    assert Type.dmg_mult(:flying, :normal) === 1.0
    assert Type.dmg_mult(:flying, :poison) === 1.0
    assert Type.dmg_mult(:flying, :psychic) === 1.0
    assert Type.dmg_mult(:flying, :rock) === 0.5
    assert Type.dmg_mult(:flying, :steel) === 0.5
    assert Type.dmg_mult(:flying, :water) === 1.0

    # Ghost vs.
    assert Type.dmg_mult(:ghost, :bug) === 1.0
    assert Type.dmg_mult(:ghost, :dark) === 0.5
    assert Type.dmg_mult(:ghost, :dragon) === 1.0
    assert Type.dmg_mult(:ghost, :electric) === 1.0
    assert Type.dmg_mult(:ghost, :fairy) === 1.0
    assert Type.dmg_mult(:ghost, :fighting) === 1.0
    assert Type.dmg_mult(:ghost, :fire) === 1.0
    assert Type.dmg_mult(:ghost, :flying) === 1.0
    assert Type.dmg_mult(:ghost, :ghost) === 2.0
    assert Type.dmg_mult(:ghost, :grass) === 1.0
    assert Type.dmg_mult(:ghost, :ground) === 1.0
    assert Type.dmg_mult(:ghost, :ice) === 1.0
    assert Type.dmg_mult(:ghost, :normal) === 0.0
    assert Type.dmg_mult(:ghost, :poison) === 1.0
    assert Type.dmg_mult(:ghost, :psychic) === 2.0
    assert Type.dmg_mult(:ghost, :rock) === 1.0
    assert Type.dmg_mult(:ghost, :steel) === 1.0
    assert Type.dmg_mult(:ghost, :water) === 1.0

    # Grass vs.
    assert Type.dmg_mult(:grass, :bug) === 0.5
    assert Type.dmg_mult(:grass, :dark) === 1.0
    assert Type.dmg_mult(:grass, :dragon) === 0.5
    assert Type.dmg_mult(:grass, :electric) === 1.0
    assert Type.dmg_mult(:grass, :fairy) === 1.0
    assert Type.dmg_mult(:grass, :fighting) === 1.0
    assert Type.dmg_mult(:grass, :fire) === 0.5
    assert Type.dmg_mult(:grass, :flying) === 0.5
    assert Type.dmg_mult(:grass, :ghost) === 1.0
    assert Type.dmg_mult(:grass, :grass) === 0.5
    assert Type.dmg_mult(:grass, :ground) === 2.0
    assert Type.dmg_mult(:grass, :ice) === 1.0
    assert Type.dmg_mult(:grass, :normal) === 1.0
    assert Type.dmg_mult(:grass, :poison) === 0.5
    assert Type.dmg_mult(:grass, :psychic) === 1.0
    assert Type.dmg_mult(:grass, :rock) === 2.0
    assert Type.dmg_mult(:grass, :steel) === 0.5
    assert Type.dmg_mult(:grass, :water) === 2.0

    # Ground vs.
    assert Type.dmg_mult(:ground, :bug) === 0.5
    assert Type.dmg_mult(:ground, :dark) === 1.0
    assert Type.dmg_mult(:ground, :dragon) === 1.0
    assert Type.dmg_mult(:ground, :electric) === 2.0
    assert Type.dmg_mult(:ground, :fairy) === 1.0
    assert Type.dmg_mult(:ground, :fighting) === 1.0
    assert Type.dmg_mult(:ground, :fire) === 2.0
    assert Type.dmg_mult(:ground, :flying) === 0.0
    assert Type.dmg_mult(:ground, :ghost) === 1.0
    assert Type.dmg_mult(:ground, :grass) === 0.5
    assert Type.dmg_mult(:ground, :ground) === 1.0
    assert Type.dmg_mult(:ground, :ice) === 1.0
    assert Type.dmg_mult(:ground, :normal) === 1.0
    assert Type.dmg_mult(:ground, :poison) === 2.0
    assert Type.dmg_mult(:ground, :psychic) === 1.0
    assert Type.dmg_mult(:ground, :rock) === 2.0
    assert Type.dmg_mult(:ground, :steel) === 2.0
    assert Type.dmg_mult(:ground, :water) === 1.0

    # Ice vs.
    assert Type.dmg_mult(:ice, :bug) === 1.0
    assert Type.dmg_mult(:ice, :dark) === 1.0
    assert Type.dmg_mult(:ice, :dragon) === 2.0
    assert Type.dmg_mult(:ice, :electric) === 1.0
    assert Type.dmg_mult(:ice, :fairy) === 1.0
    assert Type.dmg_mult(:ice, :fighting) === 1.0
    assert Type.dmg_mult(:ice, :fire) === 0.5
    assert Type.dmg_mult(:ice, :flying) === 2.0
    assert Type.dmg_mult(:ice, :ghost) === 1.0
    assert Type.dmg_mult(:ice, :grass) === 2.0
    assert Type.dmg_mult(:ice, :ground) === 2.0
    assert Type.dmg_mult(:ice, :ice) === 0.5
    assert Type.dmg_mult(:ice, :normal) === 1.0
    assert Type.dmg_mult(:ice, :poison) === 1.0
    assert Type.dmg_mult(:ice, :psychic) === 1.0
    assert Type.dmg_mult(:ice, :rock) === 1.0
    assert Type.dmg_mult(:ice, :steel) === 0.5
    assert Type.dmg_mult(:ice, :water) === 0.5

    # Normal vs.
    assert Type.dmg_mult(:normal, :bug) === 1.0
    assert Type.dmg_mult(:normal, :dark) === 1.0
    assert Type.dmg_mult(:normal, :dragon) === 1.0
    assert Type.dmg_mult(:normal, :electric) === 1.0
    assert Type.dmg_mult(:normal, :fairy) === 1.0
    assert Type.dmg_mult(:normal, :fighting) === 1.0
    assert Type.dmg_mult(:normal, :fire) === 1.0
    assert Type.dmg_mult(:normal, :flying) === 1.0
    assert Type.dmg_mult(:normal, :ghost) === 0.0
    assert Type.dmg_mult(:normal, :grass) === 1.0
    assert Type.dmg_mult(:normal, :ground) === 1.0
    assert Type.dmg_mult(:normal, :ice) === 1.0
    assert Type.dmg_mult(:normal, :normal) === 1.0
    assert Type.dmg_mult(:normal, :poison) === 1.0
    assert Type.dmg_mult(:normal, :psychic) === 1.0
    assert Type.dmg_mult(:normal, :rock) === 0.5
    assert Type.dmg_mult(:normal, :steel) === 0.5
    assert Type.dmg_mult(:normal, :water) === 1.0

    # Poison vs.
    assert Type.dmg_mult(:poison, :bug) === 1.0
    assert Type.dmg_mult(:poison, :dark) === 1.0
    assert Type.dmg_mult(:poison, :dragon) === 1.0
    assert Type.dmg_mult(:poison, :electric) === 1.0
    assert Type.dmg_mult(:poison, :fairy) === 2.0
    assert Type.dmg_mult(:poison, :fighting) === 1.0
    assert Type.dmg_mult(:poison, :fire) === 1.0
    assert Type.dmg_mult(:poison, :flying) === 1.0
    assert Type.dmg_mult(:poison, :ghost) === 0.5
    assert Type.dmg_mult(:poison, :grass) === 2.0
    assert Type.dmg_mult(:poison, :ground) === 0.5
    assert Type.dmg_mult(:poison, :ice) === 1.0
    assert Type.dmg_mult(:poison, :normal) === 1.0
    assert Type.dmg_mult(:poison, :poison) === 0.5
    assert Type.dmg_mult(:poison, :psychic) === 1.0
    assert Type.dmg_mult(:poison, :rock) === 0.5
    assert Type.dmg_mult(:poison, :steel) === 0.0
    assert Type.dmg_mult(:poison, :water) === 1.0

    # Psychic vs.
    assert Type.dmg_mult(:psychic, :bug) === 1.0
    assert Type.dmg_mult(:psychic, :dark) === 0.0
    assert Type.dmg_mult(:psychic, :dragon) === 1.0
    assert Type.dmg_mult(:psychic, :electric) === 1.0
    assert Type.dmg_mult(:psychic, :fairy) === 1.0
    assert Type.dmg_mult(:psychic, :fighting) === 2.0
    assert Type.dmg_mult(:psychic, :fire) === 1.0
    assert Type.dmg_mult(:psychic, :flying) === 1.0
    assert Type.dmg_mult(:psychic, :ghost) === 1.0
    assert Type.dmg_mult(:psychic, :grass) === 1.0
    assert Type.dmg_mult(:psychic, :ground) === 1.0
    assert Type.dmg_mult(:psychic, :ice) === 1.0
    assert Type.dmg_mult(:psychic, :normal) === 1.0
    assert Type.dmg_mult(:psychic, :poison) === 2.0
    assert Type.dmg_mult(:psychic, :psychic) === 0.5
    assert Type.dmg_mult(:psychic, :rock) === 1.0
    assert Type.dmg_mult(:psychic, :steel) === 0.5
    assert Type.dmg_mult(:psychic, :water) === 1.0

    # Rock vs.
    assert Type.dmg_mult(:rock, :bug) === 2.0
    assert Type.dmg_mult(:rock, :dark) === 1.0
    assert Type.dmg_mult(:rock, :dragon) === 1.0
    assert Type.dmg_mult(:rock, :electric) === 1.0
    assert Type.dmg_mult(:rock, :fairy) === 1.0
    assert Type.dmg_mult(:rock, :fighting) === 0.5
    assert Type.dmg_mult(:rock, :fire) === 2.0
    assert Type.dmg_mult(:rock, :flying) === 2.0
    assert Type.dmg_mult(:rock, :ghost) === 1.0
    assert Type.dmg_mult(:rock, :grass) === 1.0
    assert Type.dmg_mult(:rock, :ground) === 0.5
    assert Type.dmg_mult(:rock, :ice) === 2.0
    assert Type.dmg_mult(:rock, :normal) === 1.0
    assert Type.dmg_mult(:rock, :poison) === 1.0
    assert Type.dmg_mult(:rock, :psychic) === 1.0
    assert Type.dmg_mult(:rock, :rock) === 1.0
    assert Type.dmg_mult(:rock, :steel) === 0.5
    assert Type.dmg_mult(:rock, :water) === 1.0

    # Steel vs.
    assert Type.dmg_mult(:steel, :bug) === 1.0
    assert Type.dmg_mult(:steel, :dark) === 1.0
    assert Type.dmg_mult(:steel, :dragon) === 1.0
    assert Type.dmg_mult(:steel, :electric) === 0.5
    assert Type.dmg_mult(:steel, :fairy) === 2.0
    assert Type.dmg_mult(:steel, :fighting) === 1.0
    assert Type.dmg_mult(:steel, :fire) === 0.5
    assert Type.dmg_mult(:steel, :flying) === 1.0
    assert Type.dmg_mult(:steel, :ghost) === 1.0
    assert Type.dmg_mult(:steel, :grass) === 1.0
    assert Type.dmg_mult(:steel, :ground) === 1.0
    assert Type.dmg_mult(:steel, :ice) === 2.0
    assert Type.dmg_mult(:steel, :normal) === 1.0
    assert Type.dmg_mult(:steel, :poison) === 1.0
    assert Type.dmg_mult(:steel, :psychic) === 1.0
    assert Type.dmg_mult(:steel, :rock) === 2.0
    assert Type.dmg_mult(:steel, :steel) === 0.5
    assert Type.dmg_mult(:steel, :water) === 0.5

    # Water vs.
    assert Type.dmg_mult(:water, :bug) === 1.0
    assert Type.dmg_mult(:water, :dark) === 1.0
    assert Type.dmg_mult(:water, :dragon) === 0.5
    assert Type.dmg_mult(:water, :electric) === 1.0
    assert Type.dmg_mult(:water, :fairy) === 1.0
    assert Type.dmg_mult(:water, :fighting) === 1.0
    assert Type.dmg_mult(:water, :fire) === 2.0
    assert Type.dmg_mult(:water, :flying) === 1.0
    assert Type.dmg_mult(:water, :ghost) === 1.0
    assert Type.dmg_mult(:water, :grass) === 0.5
    assert Type.dmg_mult(:water, :ground) === 2.0
    assert Type.dmg_mult(:water, :ice) === 1.0
    assert Type.dmg_mult(:water, :normal) === 1.0
    assert Type.dmg_mult(:water, :poison) === 1.0
    assert Type.dmg_mult(:water, :psychic) === 1.0
    assert Type.dmg_mult(:water, :rock) === 2.0
    assert Type.dmg_mult(:water, :steel) === 1.0
    assert Type.dmg_mult(:water, :water) === 0.5

    # +----------------------+
    # |  Gen 2 - 5 matchups  |
    # +----------------------+

    # New Gen 6 type: Fairy vs.
    assert Type.dmg_mult(:fairy, :bug, 5) === nil
    assert Type.dmg_mult(:fairy, :dark, 5) === nil
    assert Type.dmg_mult(:fairy, :dragon, 5) === nil
    assert Type.dmg_mult(:fairy, :electric, 5) === nil
    assert Type.dmg_mult(:fairy, :fairy, 5) === nil
    assert Type.dmg_mult(:fairy, :fighting, 5) === nil
    assert Type.dmg_mult(:fairy, :fire, 5) === nil
    assert Type.dmg_mult(:fairy, :flying, 5) === nil
    assert Type.dmg_mult(:fairy, :ghost, 5) === nil
    assert Type.dmg_mult(:fairy, :grass, 5) === nil
    assert Type.dmg_mult(:fairy, :ground, 5) === nil
    assert Type.dmg_mult(:fairy, :ice, 5) === nil
    assert Type.dmg_mult(:fairy, :normal, 5) === nil
    assert Type.dmg_mult(:fairy, :poison, 5) === nil
    assert Type.dmg_mult(:fairy, :psychic, 5) === nil
    assert Type.dmg_mult(:fairy, :rock, 5) === nil
    assert Type.dmg_mult(:fairy, :steel, 5) === nil
    assert Type.dmg_mult(:fairy, :water, 5) === nil

    # vs. Fairy
    assert Type.dmg_mult(:bug, :fairy, 5) === nil
    assert Type.dmg_mult(:dark, :fairy, 5) === nil
    assert Type.dmg_mult(:dragon, :fairy, 5) === nil
    assert Type.dmg_mult(:electric, :fairy, 5) === nil
    assert Type.dmg_mult(:fighting, :fairy, 5) === nil
    assert Type.dmg_mult(:fire, :fairy, 5) === nil
    assert Type.dmg_mult(:flying, :fairy, 5) === nil
    assert Type.dmg_mult(:ghost, :fairy, 5) === nil
    assert Type.dmg_mult(:grass, :fairy, 5) === nil
    assert Type.dmg_mult(:ground, :fairy, 5) === nil
    assert Type.dmg_mult(:ice, :fairy, 5) === nil
    assert Type.dmg_mult(:normal, :fairy, 5) === nil
    assert Type.dmg_mult(:poison, :fairy, 5) === nil
    assert Type.dmg_mult(:psychic, :fairy, 5) === nil
    assert Type.dmg_mult(:rock, :fairy, 5) === nil
    assert Type.dmg_mult(:steel, :fairy, 5) === nil
    assert Type.dmg_mult(:water, :fairy, 5) === nil

    # Match-ups modified in gen 6
    assert Type.dmg_mult(:ghost, :steel, 5) === 0.5
    assert Type.dmg_mult(:dark, :steel, 5) === 0.5

    # +------------------+
    # |  Gen 1 matchups  |
    # +------------------+

    # Dark vs.
    assert Type.dmg_mult(:dark, :bug, 1) === nil
    assert Type.dmg_mult(:dark, :dark, 1) === nil
    assert Type.dmg_mult(:dark, :dragon, 1) === nil
    assert Type.dmg_mult(:dark, :electric, 1) === nil
    assert Type.dmg_mult(:dark, :fighting, 1) === nil
    assert Type.dmg_mult(:dark, :fire, 1) === nil
    assert Type.dmg_mult(:dark, :flying, 1) === nil
    assert Type.dmg_mult(:dark, :ghost, 1) === nil
    assert Type.dmg_mult(:dark, :grass, 1) === nil
    assert Type.dmg_mult(:dark, :ground, 1) === nil
    assert Type.dmg_mult(:dark, :ice, 1) === nil
    assert Type.dmg_mult(:dark, :normal, 1) === nil
    assert Type.dmg_mult(:dark, :poison, 1) === nil
    assert Type.dmg_mult(:dark, :psychic, 1) === nil
    assert Type.dmg_mult(:dark, :rock, 1) === nil
    assert Type.dmg_mult(:dark, :steel, 1) === nil
    assert Type.dmg_mult(:dark, :water, 1) === nil

    # Steel vs.
    assert Type.dmg_mult(:steel, :bug, 1) === nil
    assert Type.dmg_mult(:steel, :dark, 1) === nil
    assert Type.dmg_mult(:steel, :dragon, 1) === nil
    assert Type.dmg_mult(:steel, :electric, 1) === nil
    assert Type.dmg_mult(:steel, :fighting, 1) === nil
    assert Type.dmg_mult(:steel, :fire, 1) === nil
    assert Type.dmg_mult(:steel, :flying, 1) === nil
    assert Type.dmg_mult(:steel, :ghost, 1) === nil
    assert Type.dmg_mult(:steel, :grass, 1) === nil
    assert Type.dmg_mult(:steel, :ground, 1) === nil
    assert Type.dmg_mult(:steel, :ice, 1) === nil
    assert Type.dmg_mult(:steel, :normal, 1) === nil
    assert Type.dmg_mult(:steel, :poison, 1) === nil
    assert Type.dmg_mult(:steel, :psychic, 1) === nil
    assert Type.dmg_mult(:steel, :rock, 1) === nil
    assert Type.dmg_mult(:steel, :steel, 1) === nil
    assert Type.dmg_mult(:steel, :water, 1) === nil

    # vs. Dark
    assert Type.dmg_mult(:bug, :dark, 1) === nil
    assert Type.dmg_mult(:dragon, :dark, 1) === nil
    assert Type.dmg_mult(:electric, :dark, 1) === nil
    assert Type.dmg_mult(:fighting, :dark, 1) === nil
    assert Type.dmg_mult(:fire, :dark, 1) === nil
    assert Type.dmg_mult(:flying, :dark, 1) === nil
    assert Type.dmg_mult(:ghost, :dark, 1) === nil
    assert Type.dmg_mult(:grass, :dark, 1) === nil
    assert Type.dmg_mult(:ground, :dark, 1) === nil
    assert Type.dmg_mult(:ice, :dark, 1) === nil
    assert Type.dmg_mult(:normal, :dark, 1) === nil
    assert Type.dmg_mult(:poison, :dark, 1) === nil
    assert Type.dmg_mult(:psychic, :dark, 1) === nil
    assert Type.dmg_mult(:rock, :dark, 1) === nil
    assert Type.dmg_mult(:water, :dark, 1) === nil

    # vs. Steel
    assert Type.dmg_mult(:bug, :steel, 1) === nil
    assert Type.dmg_mult(:dragon, :steel, 1) === nil
    assert Type.dmg_mult(:electric, :steel, 1) === nil
    assert Type.dmg_mult(:fighting, :steel, 1) === nil
    assert Type.dmg_mult(:fire, :steel, 1) === nil
    assert Type.dmg_mult(:flying, :steel, 1) === nil
    assert Type.dmg_mult(:ghost, :steel, 1) === nil
    assert Type.dmg_mult(:grass, :steel, 1) === nil
    assert Type.dmg_mult(:ground, :steel, 1) === nil
    assert Type.dmg_mult(:ice, :steel, 1) === nil
    assert Type.dmg_mult(:normal, :steel, 1) === nil
    assert Type.dmg_mult(:poison, :steel, 1) === nil
    assert Type.dmg_mult(:psychic, :steel, 1) === nil
    assert Type.dmg_mult(:rock, :steel, 1) === nil
    assert Type.dmg_mult(:water, :steel, 1) === nil

    # Match-ups modified in gen 2
    assert Type.dmg_mult(:bug, :poison, 1) === 2.0
    assert Type.dmg_mult(:ghost, :psychic, 1) === 0.0
    assert Type.dmg_mult(:ice, :fire, 1) === 1.0
    assert Type.dmg_mult(:poison, :bug, 1) === 2.0
  end
end
