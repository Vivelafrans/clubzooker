class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def questionaire
  end

  def results
    create_scores
    sum = 1
    9.times do
      update_scores(sum)
      sum += 1
    end
  end

  private

  def create_scores
    Score.destroy_all
    scores_by_sport_one = QUESTIONS['question_0'.to_sym][:answers][params[:question0].to_sym]
    sports = Sport.all
    scores_by_sport_one[:points].keys.each do |key|
      score = Score.new(
        user_id: current_user.id,
        sport_id: sports.find_by(name: key).id,
        level: scores_by_sport_one[:points][key]
      )
      score.save
    end
  end

  def update_scores(number)
    scores_by_sport = QUESTIONS["question_#{number}".to_sym][:answers][params["question#{number}".to_sym].to_sym]
    sports = Sport.all
    scores_by_sport[:points].keys.each do |key|
      Score.where(user_id: current_user.id).each do |score|
        if score.sport_id == sports.find_by(name: key).id
          score.level += scores_by_sport[:points][key]
          score.save
        end
      end
    end
  end

end
