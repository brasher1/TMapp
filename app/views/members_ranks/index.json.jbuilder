json.array!(@members_ranks) do |members_rank|
  json.extract! members_rank, :id, :member_id, :ranks_id, :date
  json.url members_rank_url(members_rank, format: :json)
end
