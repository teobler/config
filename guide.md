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