# TODO: For client apps we want to add some arg (ENV) to choose between a OSS
# git project and a closed svn one. The svn version should install gems instead
# of creating checkouts of the git libs in vendor/plugins.

# On 2.3.4 the git command is broken as it only executes in_root...
inside 'vendor' do
  Git.run 'clone git://github.com/Fingertips/rails.git'
  run 'cd rails && git remote add rails git://github.com/rails/rails.git'
end

plugin 'authorization-san',         :git => 'git://github.com/Fingertips/authorization-san.git'
plugin 'authentication-needed-san', :git => 'git://github.com/Fingertips/authentication-needed-san.git'
plugin 'peiji-san',                 :git => 'git://github.com/Fingertips/peiji-san.git'
plugin 'on-test-spec',              :git => 'git://github.com/Fingertips/on-test-spec.git'

gem 'test-spec', :version => '~> 0.10.0'

rake("gems:install", :sudo => true)