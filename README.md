# A Custom Virtual Machine for Ruby on Rails Development

## Introduction

This project automates the setup of a development environment for Ruby on Rails apps.

## Requirements

* [VirtualBox](https://www.virtualbox.org)

* [Vagrant](http://vagrantup.com)

* NFS server (recommended for Linux / Mac OS X users)
    > host $ sudo apt-get install nfs-kernel-server


## How To Build The Virtual Machine

Building the virtual machine is this easy:

    host $ git clone https://github.com/rails/rails-dev-box.git
    host $ cd rails-dev-box
    host $ vagrant up

## What's In The Box

* Development tools

* Git

* rvm

* Ruby 2.4.1

* Postgres

* System dependencies

* Memcached

* An ExecJS runtime

## Recommended Workflow

* clone or create your project repo within the /development folder

* edit in the host computer

* log into the guest-vbox using the following command:
    > host $ vagrant ssh

