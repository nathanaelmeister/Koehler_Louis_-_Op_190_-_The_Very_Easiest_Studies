\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\paper {
  ragged-last = ##f
}

pieceNumber="9"

\include "../global-files/gitlink.ily"
\include "../global-files/header.ily"

%% Score Number 9.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "9." }
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
      \mark \markup { \bold "9." }

      e2 c |
      g' e |
      d e |
      d1 |
      c2 e |
      g f |
      e1 |
      d1 |
      c2 d |
      e c |
      d e |
      f1 |
      e2 g |
      e c |
      d1 |
      c1  \bar "|."

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key c \major
      \clef treble
      \numericTimeSignature
      \time 4/4
      c1 |
      e |
      g |
      f |
      e2 c |
      e2 f |
      g1 |
      f1 |
      e2 d |
      c e |
      f e |
      d1 |
      c2 e |
      g e |
      f1 |
      e1 \bar "|."

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
