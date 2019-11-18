% Score Number 30.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "30." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      %\mark \markup { \bold "30." }
      \time 3/4

      e4. d8 c4 |
      e4. d8 c4 |
      c2.-> |
      b2 r4 |
      f'4. e8 d4 |
      <f a >4. <e g >8 <d f >4 |
      <d f >2. |
      <c e >2. |
      f4. e8 c4 |
      a 2. |
      f'4. d8 b4 |
      g2. |
      e'4 c a |
      f d' c |
      b4. a8 b4 |
      c2 \mark \markup { \small \italic {"Fine."}}
      r4 \bar "||"
      d4. b8 d4 |
      g4. fis8 e4 |
      d2.-> |
      c4 r r |
      a4. b8 c4 |
      <c e >4. <b d >8 <a c >4 |
      <a c >2. |
      <g b >4 r r |
      d'4. b8 d4 |
      g2.-> |
      e4. c8 e4 |
      a2.-> |
      d,,4 fis a |
      d c a |
      g g a |
      b c \mark \markup { \small \italic { "D.C. al Fine"}}
      d  \bar "|."

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key c \major
      \clef bass
      \time 3/4

      c4 e g |
      c, e g |
      d f g |
      d f g |
      b, d g |
      b, d g |
      b, d g |
      c, e g |
      e g c |
      f, a c |
      d, f b |
      e, g b |
      c, e g |
      d f a |
      g d' f |
      <c e >2 r4 |
      b, d g |
      b, d g |
      c, e a |
      c, e a |
      d, fis a |
      d, fis a |
      d, e fis |
      g d c |
      b d g |
      b, d g |
      c, e a |
      c, e a |
      <d, fis > r r |
      <d fis > r r |
      g r r |
      R2. \bar "|."

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
