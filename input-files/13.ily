%% Score Number 13.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "13." }
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
      %\mark \markup { \bold "13." }

      c4 e8 d c4 e | 
      d4 f8 e d4 f | 
      e4 g8 f e4 g | 
      d4 f8 e d4 f | 
      e4 c8 d e4 c |
      f4 d8 e f4 d | 
      g4 e8 g f4 d | 
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
      c1 b c b c d e2 d4 b c1 \bar "|."
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
