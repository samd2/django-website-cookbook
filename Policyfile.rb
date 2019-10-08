# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'django-tutorial'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'django-tutorial::default'

# Specify a custom source for a single cookbook:
cookbook 'django-tutorial', path: '.'

cookbook "http_platform", git: 'git@github.com:sdarwin/http_platform.git', branch: 'develop'
cookbook "django_platform", git: 'git@github.com:sdarwin/django_platform.git', branch: 'develop'
cookbook "chef-vault"

