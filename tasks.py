import os
import shutil

from invoke import task


dotfiles = [
#     '.bash_profile',
#     '.bash_aliases',
    '.vimrc',
    '.vimrc.bundles',
]

task_home = os.path.abspath(os.path.join(os.path.realpath(__file__), '..'))

@task
def install():
    for dotfile in dotfiles:
	backup(dotfile)
	link(dotfile)

@task
def link(dotfile):
    source = os.path.join(task_home, dotfile)
    destination = os.path.join(os.path.expanduser('~'), dotfile)

    # TODO from bash, permissions are right only if you create
    # symlink while in the ~ directory
    os.symlink(source, destination)

@task
def backup(dotfile):
    BACKUP_DIR = os.path.join(task_home, '.backup')

    if not os.path.exists(BACKUP_DIR):
	os.makedirs(BACKUP_DIR)

    old_dotfile = os.path.join(os.path.expanduser('~'), dotfile)
    backup_dotfile = os.path.join(BACKUP_DIR, dotfile)
    shutil.move(old_dotfile, backup_dotfile)
    

@task
def install_vim_plugins():
    pass
    
# TODO automatically add ":" to list of copy characters in iterm
# brew intall vim to get clipboard support
