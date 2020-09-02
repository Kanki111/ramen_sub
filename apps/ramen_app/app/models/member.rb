module Member
  def self.table_name_prefix
    'member_'
  end
  def new
    @member = RamenMember.new
  end
end
