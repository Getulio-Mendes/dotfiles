import os

PATH = os.getenv("HOME") + "/dotfiles"

ignore = ["Firefox", ".git", "applications", "fonts","install.txt", "token", "README.md", "update.py", "copyignore"]
itens = os.listdir(PATH)

update = []

for x in itens:
    if x not in ignore:
        update.append(x)

print("Updating ...")
for entry in update:
    print(entry)

for x in update:
    os.system("rsync -r -v --exclude-from=./copyignore ../{} .".format(x))

print("Coping ~/.local/share/applications and Font")
os.system("rsync -r -v --exclude-from=./copyignore ../.local/share/applications .")
os.system("rsync  -r -v --exclude-from=./copyignore ../.local/share/fonts .")

os.system("pacman -Qe > install.txt")

os.system("git add . && git commit -m 'Auto update'")
os.system("git push")

