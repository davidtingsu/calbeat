require 'test_helper'

class ClubsControllerTest < ActionController::TestCase
  setup do
    @club = clubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create club" do
    assert_difference('Club.count') do
      post :create, club: { SGID: @club.SGID, abbrev: @club.abbrev, activity_summary: @club.activity_summary, address: @club.address, callink_permalink: @club.callink_permalink, contact_email: @club.contact_email, contact_person: @club.contact_person, contact_phone: @club.contact_phone, facebook_id: @club.facebook_id, facebook_url: @club.facebook_url, introduction: @club.introduction, meeting: @club.meeting, name: @club.name, permalink: @club.permalink, related_clubs: @club.related_clubs, requirements: @club.requirements, school_id: @club.school_id, size: @club.size, website: @club.website }
    end

    assert_redirected_to club_path(assigns(:club))
  end

  test "should show club" do
    get :show, id: @club
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @club
    assert_response :success
  end

  test "should update club" do
    patch :update, id: @club, club: { SGID: @club.SGID, abbrev: @club.abbrev, activity_summary: @club.activity_summary, address: @club.address, callink_permalink: @club.callink_permalink, contact_email: @club.contact_email, contact_person: @club.contact_person, contact_phone: @club.contact_phone, facebook_id: @club.facebook_id, facebook_url: @club.facebook_url, introduction: @club.introduction, meeting: @club.meeting, name: @club.name, permalink: @club.permalink, related_clubs: @club.related_clubs, requirements: @club.requirements, school_id: @club.school_id, size: @club.size, website: @club.website }
    assert_redirected_to club_path(assigns(:club))
  end

  test "should destroy club" do
    assert_difference('Club.count', -1) do
      delete :destroy, id: @club
    end

    assert_redirected_to clubs_path
  end
end
