# Windows with WSL
## git
1. Launch Git Bash.
2. generate a new SSH key -- ssh-keygen -t rsa -b 4096 -C "<your email address>"
3. cd ~/.ssh
4. add the SSH key to the ssh-agent, which is meant to help with the authentication process -- eval "$(ssh-agent -s)"
5. add the key to the agent -- ssh-add ~/.ssh/id_rsa
6. copy the SSH key -- cat ~/.ssh/id_rsa.pub
7. go to github settings - SSH and GPG keys - New SSH Key
8. copy the key into key and give a name for it
9. click add SSH key button
10. run ssh -T git@github.com, then if it says Hi username! You've successfully authenticated, but Github does not provide shell access. Then you are successful.
11. git config --global user.name "Your name here"
12. git config --global user.email "your_email@example.com"

## terminnal setup
1. install zsh
2. set zsh as default: chsh -s $(which zsh)
3. install oh-my-zsh: sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
4. update ubuntu:
   1. https://askubuntu.com/questions/672808/sudo-apt-get-install-python-pip-is-failing
   2. set cn resource: https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/
5. install fzf:
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
        ~/.fzf/install
6. copy code in bash_profile in this repo into ~/.zshrc
7. copy z.sh into ~

## wsl profile setting
{
    "guid": "{2c4de342-38b7-51cf-b940-2309a097f518}",
    "startingDirectory": "//wsl$/Ubuntu/home/userName",
    "hidden": false,
    "name": "Ubuntu",
    "source": "Windows.Terminal.Wsl"
}

## js setup
1. install nvm: https://github.com/nvm-sh/nvm
2. install node: nvm install 12.x.x
