How does tracking and adding changes make developers' lives easier?
Tracking and adding changes allows developers to keep a history of how the code has progressed and provide feedback. Having multiple commits allows a team to revert back to previous versions of the code in case of any mishaps.
What is a commit?
A commit is a snapshot verison of your code that you can revert back to at any time. It can be thought of as an official save, usually done after you are satisfied with the hcanges that you made or after finishing a small task.
What are the best practices for commit messages?
Best practices include writing in the imperative present tense and the first line should be a short description (50 characaters soft limit)
What does the HEAD^ argument mean?
HEAD is the last commit you made.
What are the 3 stages of a git change and how do you move a file from one stage to the other?
From the working directory, use git add the files to the staging area. From the staging area, use git commit to add the files that area ready to be committed into the git directory.
Write a handy cheatsheet of the commands you need to commit your changes?
git add file_name
git commit -m "your commit message"
What is a pull request and how do you create and merge one?
A pull request lets you tell others about changes you've pushed to a repo on GitHub. After you push your changes to GitHub, click on "compare and pull request" button which you should see when you visit your repo. Fill in the title and description, and then hit "Create pull request". An option should then show up for "Merge pull request." Then clean up by deleting the feature branch.
Why are pull requests preferred when working with teams?
They give another devleoper on the team a chance to review the new code before merging.