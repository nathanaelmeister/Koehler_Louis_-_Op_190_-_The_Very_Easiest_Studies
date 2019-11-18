%% Score Number 24.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "24." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      %\mark \markup { \bold "24." }
      \time 3/4
      \repeat volta 2 {
        \repeat volta 2 {
          g2. |
          e2 g4 |
          c2. |
          g2 r4 |
          c2. |
          g2 c4 |
          e2. |
          c2 r4 |
          d2 d4 |
          d c d |
          e2. |
          g |
          d2 d4 |
          d c a |
          g2. |
          R2.
        }
        g2 g4 |
        f'2 d4 |
        e2. |
        c2 r4 |
        g b d |
        f2 d4 |
        e2. |
        c2 r4 |
        c2 c4 |
        bes'2.-> |
        c,2 c4 |
        a'2.-> |
        g4 f d |
        g f d |
        c2 e4 |
        c2 r4
      }
    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key c \major
      \clef bass
      \time 3/4
      \repeat volta 2 {
        \repeat volta 2 {
          c4 e g |
          c, e g |
          c, e g |
          c, e g |
          c, e g |
          c, e g |
          c, e g |
          c, e g |
          b, g' f |
          b, g' f |
          c g' e |
          c g' e |
          d c' a |
          d, a' fis |
          g f e |
          g f d
        }
        b d g |
        b, d g |
        c, e g |
        c, e g |
        b, d g |
        b, d g |
        c, e g |
        c, e g |
        c, e g |
        c, e g |
        c, f a |
        c, f a |
        b, d g |
        b, d g |
        c, e g |
        <e c >2 r4
      }
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
