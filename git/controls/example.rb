# encoding: utf-8
# copyright: 2018, The Authors

git_dir = "/workspaces/saf-training-lab-enviroment/git_test/.git"

# The following banches should exist
describe git(git_dir) do
  its('branches') { should include 'master' }
  its('branches') { should include 'testBranch' }
  its('current_branch') { should cmp 'master' }
end

# The following banches should exist
#describe git(git_dir) do
#  its('branches') { should include 'master' }
#end

#describe command("git --git-dir #{git_dir} branch") do
# its('stdout') { should match /testBranch/ }
#end

#  What is the current branch
# describe command("git --git-dir #{git_dir} branch") do
#   its('stdout') { should match /^\* master/ }
# end

# What is the latest commit
#describe command("git --git-dir #{git_dir} log -1 --pretty=format:'%h'") do
#  its('stdout') { should match /edc207f/ }
#end

describe git(git_dir) do
  its ('latest_commit'){should cmp 'edc207f'}
end

describe git(git_dir) do
  its('second_to_last'){should cmp'8c30bff'}
end
