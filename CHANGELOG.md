xml Cookbook CHANGELOG
======================
This file is used to list changes made in each version of the xml cookbook.

v1.3.0 (2015-10-06)
--------------------
- Added zlib1g-dev on Ubuntu / Debian to fix compiles
- Add support for OS X
- Add source_url and issues_url to metadata.rb for Supermarket
- Update Chefspec tests to 4.X format
- Add additional platforms to the Kitchen CI config
- Use the standard Rubocop config and resolve all warnings
- Add Ruby 2.1/2.2 to Travis and remove Ruby 1.9.3
- Update Berksfile to 3.X format
- Update contributing and testing docs
- Update and expand testing dependencies in the Gemfile
- Add maintainers.md and maintainers.toml files
- Add cookbook version badge to the readme
- Add Chef and platform requirements to the readme
- Add Rakfile for simplified testing
- Remove yum and build-essential from the Berksfile since these didn't need to be there
- Update .gitignore and add chefignore to prevent extra files from being uploaded to the Chef server

v1.2.13 (2014-02-18)
--------------------
- Reverting compile_time work

v1.2.12 (2014-02-18)
--------------------
- Fixing last patch to play nicely with Chef Sugar

v1.2.11 (2014-02-18)
--------------------
- Fixing chef_gem for Chef below 12.1.0

v1.2.10 (2014-02-17)
--------------------
- Being explicit about usage of the chef_gem's compile_time property.
- Eliminating future deprecation warnings in Chef 12.1.0.

v1.2.9 (2014-12-10)
-------------------
- Re-release with stove 3.2.2 to get a metadata.rb

v1.2.8 (2014-12-09)
-------------------
- [#11] Fix warning message from build-essential
- [#13] pin nokogiri to a working version

v1.2.6 (2014-06-17)
-------------------
- [COOK-4468] Only set ENV variable when needed


v1.2.4 (2014-03-27)
-------------------
- [COOK-4474] - Bump apt and yum versions in Berksfile, Lock to build-essentials 1.4
- [COOK-4468] - Set NOKOGIRI_USE_SYSTEM_LIBRARIES env variable


v1.2.2 (2014-02-27)
-------------------
[COOK-4382] - Fix xml cookbook spec test
[COOK-4304] - Set proper packages for SUSE 11


v1.2.1
------
### Improvement
- [COOK-4304](https://tickets.chef.io/browse/COOK-4304) - Now sets proper packages for SUSE 11


v1.2.0
------
### Improvement
- **[COOK-3462](https://tickets.chef.io/browse/COOK-3462)** - Allow installing packages during compile time


v1.1.2
------
- [COOK-2059] - missing dependency on build-essential

v1.1.0
------
- [COOK-1826] - support nokogiri chef_gem
- [COOK-1902] - add support for archlinux

v1.0.4
------
- [COOK-1232] - add xslt to xml cookbook

v1.0.2
------
- [COOK-953] - Add FreeBSD support
- [COOK-775] - Add Amazon Linux support

