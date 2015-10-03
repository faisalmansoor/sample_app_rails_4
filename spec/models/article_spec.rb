require 'spec_helper'

describe 'article' do
  it 'search by updated_at' do
    gt_clause = Article.arel_table[:updated_at].gt(Arel::Nodes::BindParam.new)
    Article.where(gt_clause).bind_param({updated_at: Time.parse('2015-01-01')}).to_a
  end
end