require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  setup do
    @job = jobs(:one)
  end

  test "visiting the index" do
    visit jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "creating a Job" do
    visit jobs_url
    click_on "New Job"

    fill_in "Command", with: @job.command
    fill_in "Completed", with: @job.completed
    fill_in "Dispatched", with: @job.dispatched
    fill_in "Job Valid", with: @job.job_valid
    fill_in "Output", with: @job.output
    fill_in "Success", with: @job.success
    fill_in "Worker", with: @job.worker_id
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "updating a Job" do
    visit jobs_url
    click_on "Edit", match: :first

    fill_in "Command", with: @job.command
    fill_in "Completed", with: @job.completed
    fill_in "Dispatched", with: @job.dispatched
    fill_in "Job Valid", with: @job.job_valid
    fill_in "Output", with: @job.output
    fill_in "Success", with: @job.success
    fill_in "Worker", with: @job.worker_id
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "destroying a Job" do
    visit jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job was successfully destroyed"
  end
end
