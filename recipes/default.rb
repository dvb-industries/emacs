execute "add cassou/emacs PPA" do
  command "add-apt-repository ppa:cassou/emacs"
end

execute "update apt" do
  command "apt-get update"
end

execute "install emacs" do
  command "apt-get -y install emacs24"
end

git "~/.emacs.d" do
  repository "git@github.com:dvb-industries/.emacs.d.git"
  user "dvberkel"
  group "dvberkel"
end
