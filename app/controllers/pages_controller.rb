class PagesController < ApplicationController
  def info
    redirect_to PAGES[current_user.progress.to_s] if current_user.progress != User::PROGRESS[:consent]
  end

  def video
    if current_user.progress == User::PROGRESS[:pretest_result]
       current_user.update_attribute(:progress, User::PROGRESS[:video])
    elsif current_user.progress != User::PROGRESS[:video]
      redirect_to PAGES[current_user.progress.to_s]
    end 
  end

  def survey
    if current_user.progress == User::PROGRESS[:consent]
      current_user.update_attribute(:progress, User::PROGRESS[:survey])
    elsif current_user.progress != User::PROGRESS[:survey]
      redirect_to PAGES[current_user.progress.to_s]
    end
  end

  def stats
    unless current_user.admin
      redirect_to PAGES[current_user.progress.to_s]
      return
    end
    @users = User.all
    @stats = {
      age_lt40: User.where("age < ?", 40).size,
      age_gte40: User.where("age >= ?", 40).size,
      gender_male: User.where(gender: 0).size,
      gender_female: User.where(gender: 1).size,
      training_consultant: User.where(training: 0).size,
      training_fellow: User.where(training: 1).size,
      endoscopies_lt100: User.where(endoscopies: 0).size,
      endoscopies_gte100: User.where(endoscopies: 1).size,
      iee_use: User.where(iee: 0).size,
      iee_do_not_use: User.where(iee: 1).size
    }
  end

  def save_info
    name = params[:name]
    current_user.update_attributes(
      name: params[:name],
      age: params[:age].try(:to_i),
      gender: params[:gender].try(:to_i),
      training: params[:training].try(:to_i),
      endoscopies: params[:endoscopies].try(:to_i),
      iee: params[:iee].try(:to_i),
      progress: User::PROGRESS[:pretest]
    )
    redirect_to '/pretest'
  end
end
