%% Score Number .

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "22." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c' {
      \key c \major
      %\mark \markup { \bold "22." }
      \numericTimeSignature
      \time 4/4
      <c e >1 <c g'> <g' b, > <e c > <e c > <c g' > <b g'> c
      \bar "|."

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key c \major
      \clef bass
      \numericTimeSignature
      \time 4/4
      c4 e g f e d e c d g f d c e g e c e g f e d e c d e f g e d c2
      \bar "|."

    }
  >>
  \layout { }
  %\midi {
  %  \context {
  %    \Score
  %    tempoWholesPerMinute = #(ly:make-moment 100 4)
  %  }
  %}
}
