class Match < ActiveRecord::Base
  belongs_to :phase :class_name => 'phase'
  belongs_to :group :class_name => 'group'
  belongs_to :stadium :class_name => 'stadium'
  belongs_to :local_team, :class_name => 'Team'
  belongs_to :visitor_team, :class_name => 'Team'
  belongs_to :winner, :class_name => 'Team'
  belongs_to :loser, :class_name => 'Team'
end
