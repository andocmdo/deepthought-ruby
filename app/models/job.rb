class Job < ApplicationRecord
  after_create_commit { ActionCable.server.broadcast 'realtime_channel', message: render_update }
  after_update_commit { ActionCable.server.broadcast 'realtime_channel', message: render_update }
  after_destroy_commit { ActionCable.server.broadcast 'realtime_channel', message: render_update }


  private

  def render_update
    JobsController.render :_job_table, assigns: { jobs: Job.all }, :layout => false
  end

end
