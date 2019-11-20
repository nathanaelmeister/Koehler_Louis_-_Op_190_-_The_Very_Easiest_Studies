# Louis Köhler
## The Very Easiest studies; Op.190
### 36 easy, progressive studies for Piano two hands; 

from the first beginning by using only five different notes and treble clef,
to more advanced studies that claim abilities from better note reading to small position changes and left right coordination.

![Köhler, Louis - Op.190 book preview image](https://repository-images.githubusercontent.com/222370810/71002680-0b3c-11ea-8a75-e969d0a4dce4)

________________________________________________________________________________

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

If you want to get **MIDI** files, you need to uncomment the `\midi {}` blog behind the `\layout` blog  
within the `\score` blog like this:
 
```
\score {

  \layout {}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
```

**Changing the tempo of the MIDI file:**

```
% you can change the tempo in each file by replacing the 100
% to a different value:

  \context {
    \Score
    tempoWholesPerMinute = #(ly:make-moment 80 4) %% equals 80 bpm
  }

  \context {
    \Score
    tempoWholesPerMinute = #(ly:make-moment 70 4) %% equals 70 bpm
  }

```

typset with: [Lilypond](http://lilypond.org) "2.18.2"  

you can try it online on: [LilyBin](http://lilybin.com)
or get support at the offical IRC on [FreeNode](http://webchat.freenode.net/?channels=lilypond)  
more Scores in the [LilyPond](http://lilypond.org) format can be found on [www.MutopiaProject.org](https://www.mutopiaproject.org)  
snippets and tweaks can be found in the [The LilyPond Snippet Repository ♪♫](http://lsr.di.unimi.it/LSR/Search)  
