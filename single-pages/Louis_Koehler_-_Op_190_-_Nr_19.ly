\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\paper {
  ragged-last = ##f
}

pieceNumber="19"

\include "../global-files/gitlink.ily"
\include "../global-files/header.ily"

%% Score Number 19.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "19." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c' {
      \key c \major
      \mark \markup { \bold "19."}
      \numericTimeSignature
      \time 4/4
      c1 e d c d f e d e g f e d e d c \bar "|."

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key c \major
      \clef bass
      \numericTimeSignature
      \time 4/4
      c1 e d c d f e d e g f e d e d c \bar "|."
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
