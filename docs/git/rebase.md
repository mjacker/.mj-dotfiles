git checkout feacture/name
git fetch origin
git rebase origin/develop

```
develop
  |
  A---B---C   ← origin/develop (latest)
           \
            D'--E'--F' ← feacture/name (your commits replayed on top)
```

