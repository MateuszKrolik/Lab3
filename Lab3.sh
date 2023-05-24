# Tutorial - Learn Git Branching
# Przejście przez kroki w tutorialu

# Tworzenie nowego repozytorium
git init
touch plik.txt
git add plik.txt
git commit -m "Dodanie pliku.txt"

# Stworzenie nowego brancha
git branch nowy-branch
git checkout nowy-branch
echo "Zmiana na nowym branchu" >> plik.txt
git add plik.txt
git commit -m "Zmiana na nowym branchu"

# Przełączanie się między branchami
git checkout master
echo "Zmiana na głównym branchu" >> plik.txt
git add plik.txt
git commit -m "Zmiana na głównym branchu"

# Scalanie branchy
git merge nowy-branch
git branch -d nowy-branch

# Rebase
git checkout -b nowy-branch2
echo "Nowa zmiana na nowym branchu" >> plik.txt
git add plik.txt
git commit -m "Nowa zmiana na nowym branchu"
git checkout master
echo "Inna zmiana na głównym branchu" >> plik.txt
git add plik.txt
git commit -m "Inna zmiana na głównym branchu"
git rebase nowy-branch2

# Reset
git reset HEAD~1

# Reflog
git reflog

# Cherry-pick
git cherry-pick HEAD@{2}
