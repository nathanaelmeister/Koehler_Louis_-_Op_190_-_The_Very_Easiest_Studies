%% Score Number .

\score {
  \new PianoStaff \with {
    instrumentName =  ""
    %\markup { \bold \huge { \larger "2." }}
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      \mark  \markup { \bold "23." }
      \numericTimeSignature
      \time 4/4
      e4 g e c |
      e g e c |
      d e f d |
      c d e2 |
      g4 e c e |
      g e c e |
      f e d f |
      e g e2 \bar "|."

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key c \major
      \clef bass
      \numericTimeSignature
      \time 4/4
      c4 e g e |
      c e g e |
      f e d f |
      e d c2 |
      e4 g e c |
      e g e c |
      d e f d |
      c e c2 \bar "|."
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
