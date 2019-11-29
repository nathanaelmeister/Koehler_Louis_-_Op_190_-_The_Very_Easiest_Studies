\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\paper {
  ragged-last = ##f
}

pieceNumber="15"

\include "../global-files/gitlink.ily"
\include "../global-files/header.ily"

%% Score Number 15.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "15." }
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
      \mark \markup { \bold "15." }

      e4 f g2 c,4 d e2 d4 f e d c4 e d c e4 f g2 c,4 d e2 d4 f e d c1 \bar "|."


    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key c \major
      \clef treble
      \numericTimeSignature
      \time 4/4
      c1 | e2 c | g'1 | e | c | e2 c | g'1 | <c, e>1 \bar "|."

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
