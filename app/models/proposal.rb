class Proposal < ActiveRecord::Base
  
  STATUS = %w(pending approved expired)
  
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :status
  
  validates_inclusion_of :status, :in => Proposal::STATUS
  
  def self.translated_status
    Proposal::STATUS.map{|st| I18n.t("proposals.status.#{st}".to_sym)}
  end
      
end
