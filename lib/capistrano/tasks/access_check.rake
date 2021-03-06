desc "Check that we can access everything"
task :check_write_permissions do
  on roles(:all) do |host|
    if test("[ -w #{fetch(:deploy_to)} ]")
      info "#{fetch(:deploy_to)} is writable on #{host}"
    else
      error "#{fetch(:deploy_to)} is not writable on #{host}"
    end
  end
end

# I haven't figured out how to check permission to execute ln
# which is all deployer has sudo NOPASSWD access to
desc "Check deployer sudo access"
task :check_deployer_sudo do
  on roles(:all) do |host|
    if test("sudo [ -w /etc/nginx/sites-enabled/#{fetch(:application)} ]")
      info "/etc/nginx/sites-enabled/#{fetch(:application)} is writable on #{host}"
    else
      error "/etc/nginx/sites-enabled/#{fetch(:application)} is not writable on #{host}"
    end

    if test("[ -w /etc/init.d/unicorn_#{fetch(:application)} ]")
      info "/etc/init.d/unicorn_#{fetch(:application)} is writable on #{host}"
    else
      error "/etc/init.d/unicorn_#{fetch(:application)} is not writable on #{host}"
    end
  end
end

desc "Check ENV"
task :check_env do
  on roles(:all) do 
    info "Environment: #{fetch(:application)}"
  end
end