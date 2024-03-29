# See https://github.com/voltrb/volt#routes for more info on routes

client '/daily/sections', controller: 'daily', action: 'index'
client '/daily/section/{{ section_id }}/edit', controller: 'daily', action: 'edit'

# Routes for login and signup, provided by user_templates component gem
client '/signup', component: 'user_templates', controller: 'signup'
client '/login', component: 'user_templates', controller: 'login'

# The main route, this should be last. It will match any params not
# previously matched.
client '/', {}
