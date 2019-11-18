%% Score Number 3.

\score {
  \new PianoStaff \with {
    instrumentName =  \markup { \bold \huge \number { "3." }}
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      \time 3/4
      %\mark  \markup { \bold "3." }

      e4 g e | 
      c2 e4 | 
      d2 f4 | 
      e2 c4 | 
      e g e | 
      c2 e4 |
      d f d | 
      c2 r4 \bar "|." 

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key c \major
      \numericTimeSignature
      \time 3/4
      e4 g e | 
      c2 e4 | 
      d2 f4 | 
      e2 c4 | 
      e g e | 
      c2 e4 | 
      d f d | 
      c2 r4 \bar "|."

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
