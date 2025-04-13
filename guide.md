1. Add new ssh key to github - https://docs.github.com/en/authentication/connecting-to-github-with-ssh
2. Add two ssh key for single computer
   1. Generate new ssh key for different email
   2. Add different config for different email 
   3. ```bash
      Host tomo
      HostName github.com
      User QirongZhang
      IdentityFile ~/.ssh/tomo_email

      Host github
      HostName github.com
      User teobler
      IdentityFile ~/.ssh/gmail
      ```
    4. Use different host for different git clone
3. Add different git user config for different folder
   1. In `~/.gitconfig`, add this
   2. ```bash
      [includeIf "gitdir:~/Developer/sideproject/"]
      path = ~/Developer/sideproject/.gitconfig

      [includeIf "gitdir:~/Developer/workspace/"]
      path = ~/Developer/workspace/.gitconfig
      ```
   3. Then in different config file in different, add different user config
   4. ```bash
      # sideproject folder
      [user]
        email = jcxzqr@gmail.com
        name = teobler
      
      # workspace folder
      [user]
        email = working@mail.com
        name = working user name
      ```