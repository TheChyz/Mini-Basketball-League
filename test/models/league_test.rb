require 'test_helper'

class LeagueTest < ActiveSupport::TestCase

  setup do
    @league_test_surrey = leagues(:surrey)
  end

  test "leagues created_at cannot be null" do
    assert(@league_test_surrey.created_at.present?)
  end

  test "leagues updated_at cannot be null" do
    assert(@league_test_surrey.updated_at.present?)
  end

  test "leagues score_ids is initialized as an empty array" do
    assert(@league_test_surrey.score_ids.empty?)
  end

  test "leagues score_ids stores integer values" do
    @league_test_surrey.score_ids << 1
    assert(@league_test_surrey.score_ids[0].is_a? Integer)
  end

  test "leagues score_ids can store multiple integers as an array" do
    @league_test_surrey.score_ids << 4
    @league_test_surrey.score_ids << 6
    assert(@league_test_surrey.score_ids.count == 2)
  end

  test "leagues name is a string" do
    assert(@league_test_surrey.name.is_a? String)
  end

  test "leagues active attribute is false by default" do
    assert(@league_test_surrey.active == false)
  end

  test "leagues active attribute is boolean" do
    @league_test_surrey.active = true
    assert([true, false].include? @league_test_surrey.active)
  end

  #test "two leagues cannot have the same name" do
    # => TODO
  #end

  #test "two leagues cannot have the same score_ids" do
    # => TODO
  #end

end
