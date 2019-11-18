%% Score Number 10.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "10." }
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
      %\mark  \markup { \bold "10." }

      e2 g |
      d g |
      f g |
      e g |
      e4 g e g |
      d g d g |
      f g d g |
      c, e c2 \bar "||"
      e1 |
      d |
      f |
      e |
      e |
      d |
      f2 d |
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
      b |
      d |
      c |
      c |
      b |
      d2 b |
      c1 \bar "||"
      c2 g' |
      b, g' |
      d g |
      c, g' |
      c,4 g' c, g' |
      b, g' b, g' |
      d g  b, g' |
      e g c,2 \bar "|."

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
