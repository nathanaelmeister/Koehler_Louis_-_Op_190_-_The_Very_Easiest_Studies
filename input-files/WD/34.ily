% Score Number 34.

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
      \mark  \markup { \bold "34." }
      \numericTimeSignature
      \time 4/4

      \partial 4
      a4
      c2.-> a4
      c2.-> a8( b
      c4-.) c-. d-. d-.
      e2-> r4 c
      e2.-> c8 d
      e2.-> c8( d
      e4-.) e fis-. fis-.
      g2-> r4 e8( f
      g4-.) g-. g( a8 g
      f4-.) f-. f( g8 f
      e4-.) e-. e( f8 e
      d4-.) d-. d-. e8( d
      c4-.) c8 b a4-. a8( b
      c4-.) c8( b a4-.) a8( b
      c4 e b d
      a2.) \bar "|."

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key c \major
      \clef treble
      \numericTimeSignature
      \time 4/4

      \partial 4
      r4
      a c e r
      a, c e r
      a, e' b g'
      c, e g r
      c, e g r
      c, e g r
      c, g' dis b'
      e, g b r
      e, g e g
      d g d g
      c, e c e
      b e b e
      a, e' c e
      a, e' c e
      a, c d e
      c e a, \bar "|."

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
