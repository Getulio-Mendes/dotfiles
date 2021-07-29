import os

PATH = os.getenv("HOME") + "/dotfiles"

ignore = ["Firefox", ".git", "install.txt", "README.md", "update.py", ".config"]
itens = os.listdir(PATH)

update = []

for x in itens:
    if x not in ignore:
        update.append(x)

print("Updating ...")
for entry in update:
    print(entry)

os.system("pacman -Qe > install.txt")

for x in update:
    os.system("cp -r ../{} .".format(x))

os.system("git add .")
os.system("git commit -m 'Auto Update'")

print("Remenber to cp .config and 'git push'")
