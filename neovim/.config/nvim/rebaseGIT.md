git checkout myConfig
git status
git add .
git commit -m "new change"

git checkout master
git pull upstream master

git checkout myConfig
git rebase master

##

git checkout myConfig
git rebase master
作用:
它会找到你的个人分支myConfig和 master分支的共同祖先提交。
然后，它会把你个人分支上自共同祖先以来的所有提交，临时保存起来。
接着，它将你的个人分支的 HEAD 指向 master 的最新提交。
最后，它把你之前临时保存的那些个人提交，逐个地在新的 HEAD（即master的最新状态）之后重新应用（"重放"）。

A --- B --- C  (master, 上游更新)
       \
       D --- E  (myConfig, 你的更改)


A --- B --- C  (master, 上游更新)
        \
        C --- D' --- E'  (myConfig)

git status
nvim init.lua
git add init.lua
git status
git rebase --continue
(git rebase --abort)

如果误操作导致提交丢失，查看 Git reflog
git reflog
git reset --hard <commit_hash>
