# Think About Time

I looked into a couple things including meditation, the pomodoro technique, growth mindset, developing habits, and time boxing. I’m looking into trying out meditation. In this day and age, we are constantly bombarded with various forms of communication alerts and distractions that it can detract our focus. Practicing mediation has been known to sharpen your focus, reduce anxiety and stress, enhance creativity, and improve memory; all good things when trying to tackle learning something new: in this case coding. I think starting my day off with meditation for 10 minutes would be a good habit to build and hopefully improve I’ll see some improvement in multiple facets of my life.
Time boxing is a previously agreed period of time during which a person or team works steadily towards one goal. It involves stopping work when the time limit is reached and evaluating what was accomplished. During Phase 0, this would be a good tactic employ when pair programming when switching between driving and navigating or when completing challenges to reinforce learning. It also seems like it would work well in conjunction with the pomodoro technique.
Right now, I don’t an exact system for time management but one strategy I like to employ is tackling small easy tasks first. Back at my last job, I usually start off my morning in the office by answering emails and solving simple problems. This helps me to get things off my plate and free up my mind to tackle the larger tasks that come at me throughout the day. This also ensures that I get off to a productive start which usually helps give me the motivation to get through the rest of my tasks.
My plan for phase 0 is to spend the first day each week taking a look over the challenges we are expected to complete to get a sense of how much time I’ll need to allocate to make sure I get everything done. I plan to to start my day off with some meditation to relax my mind and align my focus for the day; I downloaded the headspace app and plan to try it out for 10 minutes each morning. I’ll then look to continue on the week’s challenges and be sure to take breaks after each extended sessions to reflect on what I just learned. When I get stuck, I’ll probably look to take a longer extended break and maybe get some exercise in and come back to the problem with a fresh mind.

## The Command Line

A shell is a macro processor that takes your text commands from the keyboard and gives them to the computer to execute. Bash is the standard shell we will be using for our systems.
I was able to test out all of the commands. For the Do More portion for env; I haven’t yet figured out to change the PATH for your computer or what exactly that means. For me I would say that fully understanding the cp and mv commands were probably the most difficult as understanding how they work in shell is much different than copying and pasting in a text editor. With that said, the most important commands to know in my opinion are cp, mv, pushd, and popd as they teach you how to thoroughly navigate around your directories.
-pwd
print working directory
-ls
list directory
-mv
move file or directory
-cd
change directory
-../
move up in tree and path
-touch
make an empty file
-mkdir
make directory
-less
page through a file
-rmdir
remove directory
-rm
remove a file
-help:
look up information about commands

### Forking and Cloning

To create a new repo, go to your GitHubprofile page. Click on the “+” sign in the top right corner and select “New Repository” from the drop down. Fill in the repository name, select your setting for visibility, add a license if necessary, and then click “Create Repository” and voila.
To fork a repo, simply click “Fork” in the top right corner assuming you’re on the Github page of the repo you want to fork. You should get a pop up that prompts where the repository should be forked too, select your username and Github should redirect you to your forked copy of the repo.
To clone the repo to your local machine, open up your terminal and navigate to the directory you want to clone to. Copy the URL of your forked repo (either SSH if you have it set up or the HTTPS) and then type git clone URL_THAT_YOU_COPIED into your command line. Enter your GitHub username and password if prompted. After the code executes, you should see the folder with the same name as the repo you cloned by using ls. Navigate into this folder with cd and open it with subl to open all the files in Sublime.
For the most part, my git install went quite smoothly. I forgot the first time to move the sublime file into my applications folder so I had trouble getting sublime to work with git. Other than that, not many issues with the install.
