# Louis Köhler
## 36 easy studies for Piano; Op.190

### !book compiling is not possible - due to a missing file
### copyright.ily needs to be added within next commit
### symlink error :-(

While this collection is on growing, it is only providing the single pieces as [lilypond](http://lilypond.org) *.ly files.  
**PDF** and **MIDI** files are going to be added within the finalization of the collection to prevent a boost of the .git repository.  
If you want to get **PDF** files beforehand you need to install [lilypond](http://lilypond.org) and compile the *.ly files.

**Here is a short description for a LINUX System from the Command-Line**

```
# install lilypond from your repository
# using apt or your apropriate package manager

apt update
apt install lilypond

# compile input file with lilypond

lilypond filename.ly 

# to batch compile all files in a folder
# simply run this for-loop from the command-line

for i in *.ly; do lilypond $i;done
```

If you want to get **MIDI** files, you need to add a `\midi {}` blog behind the `\layout` blog  
within the `\score` blog like this:
 
```
\score {
  \new StaffGroup = "" \with {
        instrumentName = \markup { \bold \huge { \larger "1." }}
      }
  <<
    \new Staff = "celloI" \celloI
  >>
  \layout {}
  \midi {}
}
```

The **book** files are going to be published when a certain amount of pieces are available,  
if you want to compile a book with the present pieces use the `make-book.sh` script as follows:

```
#run script in parent directory:

bash make-book.sh dir/

#compile book*.ly file with lilpond:

lilpond Book-dir.ly
```

typset with: [Lilypond](http://lilypond.org) "2.18.2"  
you can try it online on: [LilyBin](http://lilybin.com)
or get support at the offical IRC on [FreeNode](http://webchat.freenode.net/?channels=lilypond)
