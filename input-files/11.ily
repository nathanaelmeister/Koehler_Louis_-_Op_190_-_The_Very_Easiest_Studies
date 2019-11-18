%% Score Number 11.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "11." }
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
      %\mark \markup { \bold "11." }

      c4 e c e |
      d f d f |
      e g e g |
      d f d f |
      e c e c |
      f d f d |
      g e f d |
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
      c1 b c b c d e4 c d b c1 \bar "|."
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
