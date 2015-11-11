module Rulers
  class Application
    def get_controller_and_action(env)
      _, cont, action, after = # underscore used to mean “a value I donʼt care about”
        env["PATH_INFO"].split('/', 4) # split the URL on “/”. The “4” means “split no more than 4 times”
      cont = cont.capitalize # "People"
      cont += "Controller" # "PeopleController"
      [Object.const_get(cont), action]
    end
  end
end
