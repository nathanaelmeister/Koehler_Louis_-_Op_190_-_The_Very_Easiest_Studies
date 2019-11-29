\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\paper {
  ragged-last = ##f
}

pieceNumber="5"

\include "../global-files/gitlink.ily"
\include "../global-files/header.ily"

%% Score Number 5.

\score {
  \new PianoStaff \with {
    instrumentName =  \markup { \bold \huge \number { "5." }}
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \mark  \markup { \bold "5." }

      c1 e d f e g d f e c f d g e d c \bar "|." 


    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key c \major
      \numericTimeSignature
      \time 4/4
      e1 c f d g e f d c e d f e g f e \bar "|."
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
