execute "add cassou/emacs PPA" do
  command "add-apt-repository ppa:cassou/emacs"
end

execute "update apt" do
  command "apt-get update"
end

execute "install emacs" do
  command "apt-get install emacs24"
end
