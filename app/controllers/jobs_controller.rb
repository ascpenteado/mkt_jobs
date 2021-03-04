class JobsController < ApplicationController
  def index
    @jobs = Job.all 
    render json: @jobs
end 

def show
    @job = Job.find(params[:id])
    render json: @job
end 

def create
    @job = Job.create(
        job_title: params[:job_title],
        company: params[:company],
        description: params[:description]
    )
    render json: @job
end 

def update
    @job = Job.find(params[:id])
    @job.update(
      job_title: params[:job_title],
      company: params[:company],
      description: params[:description]
    )
    render json: @job
end 

def destroy
    @jobs = Job.all 
    @job = Job.find(params[:id])
    @job.destroy
    render json: @jobs
end 

end
