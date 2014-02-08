execute "add cassou/emacs PPA" do
  command "add-apt-repository ppa:cassou/emacs"
end

execute "update apt" do
  command "apt-get update"
end

execute "install emacs" do
  command "apt-get -y install emacs24"
end

git node[:emacsd][:location] do
  repository node[:emacsd][:repository]
  user node[:emacsd][:user]
  group node[:emacsd][:group]
end
