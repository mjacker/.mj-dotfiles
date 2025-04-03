## How to connect to github throught ssh

1. Generating a new SSH key and adding it to the ssh-agent
`ssh-keygen -t rsa -C "yout_email@example.com"`

<!--
2. Adding your SSH key to the ssh-agent
- Start the ssh-agent in the background.
```
$ eval "$(ssh-agent -s)"
> Agent pid 59566
```
-->

2. Add your SSh private key
`ssh-add ~/.ssh/id_rsa`

3. Add your public key to Github.
 Generating a new SSH key and adding it to the ssh-agent
`ssh-keygen -t ed25519 -C "yout_email@example.com"


# Testing ssh connection to github

ssh -T git@github.com -v

# Using a config file to choose an specifig private key/user to connect

crethe the file "config" inside the .ssh folder with the next content

```
Host github.com
    HostName github.com
    User git
    IdentityFile C:\path\to\private\key
    IdentitiesOnly yes
```
