class HomeController < ApplicationController
  def index
    @jobs = Job.all
  end

  def about
  end

  def services
  end

  def contact
  end

  def questions
    question = Question.new(question_params)
    if question.save

      redirect_to home_contact_path, :flash => { notice: "Thank you for your question" }
    else
      errors = question.errors.full_messages
      redirect_to home_contact_path, :flash => { error: errors }
    end
  end

  private

  def question_params
    params.permit(:full_name, :subject, :email, :message)
  end

end
