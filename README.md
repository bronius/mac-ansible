# Praxent mac-ansible

Personal mac setup provisioned through Ansible

## Requirements

* Latest Xcode
* Pip (installed in setup script if missing)
* Ansible (installed in setup script if missing)

## Installation

Simply cloning this repository and running `make` is all that is required.
Doing so will install pip and ansible as they are both required
to provision.

The `mac-osx.yml` playbook is then run to provision everything.

### Docker

This role will take the liberty of installing a view essential docker tools such
as machine, compose and swarm. It will also set up a default `dev` machine using
virtualbox to use where the swarm image will also be pulled.

## Todo

* Praxent Terminal Theme
* Local DNS
* Consider more Dotfiles
* Sublime Packages
  * DocBlockr
  * Drupal
  * GitGutter
  * HandleBars
  * PhpDoc
  * Sass
  * SCSS
  * SideBarEnhancements
  * SublimeGit
  * SublimeLinter
  * SublimeLinter-contrib-scss-lint
  * SublimeLinter-jscs
  * SublimeLinter-jshint
  * SublimeLinter-php
  * SublimeLinter-phpcs
  * SublimeLinter-phpmd
  * Twig
