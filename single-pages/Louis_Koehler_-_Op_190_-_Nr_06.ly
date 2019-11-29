\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\paper {
  ragged-last = ##f
}

pieceNumber="6"

\include "../global-files/gitlink.ily"
\include "../global-files/header.ily"

%% Score Number 5.

\score {
  \new PianoStaff \with {
    instrumentName =  \markup { \bold \huge \number { "6." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \mark  \markup { \bold "6." }

      e2 g f d c e d g c, g' e c d e c1 \bar "|."


    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key c \major
      \numericTimeSignature
      \time 4/4
      c1 | d | e | f | e | c | f2 g | <e c>1 \bar "|."
    }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
