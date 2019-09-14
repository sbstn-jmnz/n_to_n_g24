class Project < ApplicationRecord
  has_many :assignments
  has_many :workers, through: :assignments

  def available_workers
    Worker.all - workers
  end
end
