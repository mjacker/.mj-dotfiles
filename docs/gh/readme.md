Show pull request list
`gh pr list`

All pr list
`gh pr list --state "all"` | `gp pr list -s "all"`

PR status
`gh pr status`

Assigned pull request
`gh pr list --assignee "<username>"`

PR Closed
`gh pr list --state "closed"`

By label
`gh pr list --label "bug"`

View (not cli)
`gh pr view "14"`

Create pull request for current Branch
`gh pr create` 
> first change to another branch not main/master`

Create pull request by cli
`gh pr create -t "Sample Title" -b "Sample body"`

Create pull request by web
`gh pr create --web`

Swith to branch
`gh pr checkout "<number>"`
