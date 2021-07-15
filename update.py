import os

PATH = os.getenv("HOME") + "/dotfiles"

ignore = ["Firefox", ".git", "install.txt", "README.md", "update.py"]
itens = os.listdir(PATH)

update = []

for x in itens:
    if x not in ignore:
        update.append(x)

print("Updating ...")
for entry in update:
    print(entry)

for x in update:
    os.system("cp -r ../{} .".format(x))

