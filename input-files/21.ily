%% Score Number 21.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "21." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c' {
      \key c \major
      \numericTimeSignature
      %\mark \markup { \bold "21." }
      \time 4/4
      e2 g c, g' f g d g c, g' e g d g f g
      e c g' c, a' c, g' c, f g e g c, g' e1 \bar "|."

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key c \major
      \clef bass
      \numericTimeSignature
      \time 4/4
      c1 e d f e c f d c e f e d f e <c g'>  \bar "|."
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
