%% Score Number 1.

\score {
  \new PianoStaff \with {
    instrumentName =  \markup { \bold \huge \number { "1." }}
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      \numericTimeSignature
      \time 4/4
      %\mark \markup { \bold "1."}
      c1
      d
      e
      c
      d
      e
      d
      c
      d
      f
      e
      g
      f
      d
      c
      r \bar "|." 
    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key c \major
      \numericTimeSignature
      \time 4/4
      c1 d e c d e d c d f e g f d c r \bar "|."
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
