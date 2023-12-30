# Escape the Experiment
## Authors: Henry Earnest (`henreedev`), Christopher Picardo (`N/A`), Tomoki Ishizuka (`N/A`)
##### https://github.com/henreedev/escape-the-experiment.git
### How to Run
In the Godot editor, press F5 to run the main scene (`scenes/main.tscn`). 
### Working with Git
Some shorthand words to know
- repo: repository. Essentially our project folder
- remote: The remote repository. In our case, this means the escape-the-experiment repo uploaded on Github.
- local: The local repository. It is the project folder on your own personal computer (local machine).
- commit: A group of changes. Commits should be "atomic commits," where one commit is an independent group of changes. 
For example, you shouldn't have a commit that changes the user behavior AND changes enemy spawn behavior. These should be 2+ commits.
If you have changes that should belong in separate commits, you can specify which changes to add for this specific commit using `git add <filename>`.
### How to Contribute
Project contribution will generally follow the following steps:
1. Clone the remote (online) repository to your machine using `git clone https://github.com/henreedev/escape-the-experiment.git` in a command prompt (install Git Bash here https://git-scm.com/downloads)
2. Checkout the main branch using `git checkout main`
3. Pull the current main branch using `git pull`
4. Create and switch to a new branch using `git checkout -b <branch_name>`
5. Make contributions on this branch, committing at checkpoints using `git add .` `git commit -m "<commit message>"`
6. Push commits to remote repository's version of the branch using `git push`
7. Open a pull request on the repo website under the "Pull requests" tab at the top
8. Others can review and confirm the changes. If you're confident, you can close the pull request (merge) yourself. 

##### Resources for learning GDScript and Godot:
- GDScript Basics: https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html 
- Godot Editor Basics: https://docs.godotengine.org/en/3.1/getting_started/step_by_step/intro_to_the_editor_interface.html
