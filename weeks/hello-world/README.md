# Hello World

--------------------------------------------------------------------------------

## Requirements

Start our first project, Hello World! To practice our very basic skills on modern web development.

### Process

- Use UNIX-based OS (Linux or macOS)
- Use code editor
- Use terminal
- Use Git and GitHub
- Use Markdown
- Use HTML
- Ask questions and discuss in group

--------------------------------------------------------------------------------

## Level 0

- Relax your mind
- Use a recommended OS
- Open your terminal/shell based on your OS
- Install tools with your OS package manager or setup installation: code editor and Git
- Configure Git with your name and email

```sh
git config --global user.name "Your Name"
git config --global user.email "yourname@website.com"
```

- Navigate to your work folder

```sh
cd ~/documents
```

- Create a new repository based on a new created folder

```sh
mkdir my-new-repo
cd my-new-repo
git init
```

- Create a blank file, create some text, then save it

```sh
touch myfile.txt
# edit with any editor
```

- Commit those changes

```sh
git add myfile.txt
git commit -m "Create myfile.txt"
```

- Congrats! You just created a new Git repo
- Explore with various Git commands you know, or use `man git` to learn more

--------------------------------------------------------------------------------

## Level 1

- Open your browser to [GitHub](https://github.com) and create an account
- Make sure to create your username easy to read. For example: `nikolatesla`, `thomasedison`
- Fork and clone the provided repository from our class repo
- Go to your class' repo: <https://github.com/impactbyte-character/hello-world> then click `Fork`
- Clone the forked GitHub repo from your own repo to your local computer

```sh
git clone https://github.com/yourname/hello-world
```

- Navigate to the cloned repo

```sh
cd hello-world
```

- Make some changes with `README.md` file
- Commit and push those changes

```sh
git add -A
git commit -m "Change some texts"
```

--------------------------------------------------------------------------------

## Level 2

- Update the README with Markdown file format in your code editor
- Tell a bit about what you want to create
- Create an initial HTML file
- Fill it up with proper HTML tags
- Create a header, content, and footer
- Create some good Git commit messages
- Push your changes to GitHub

```sh
git push origin master
```

--------------------------------------------------------------------------------

## Level 3

- Create a Pull Request on GitHub
- Tell that you have done this project in our Facebook Group
- The project review will be conducted on GitHub
