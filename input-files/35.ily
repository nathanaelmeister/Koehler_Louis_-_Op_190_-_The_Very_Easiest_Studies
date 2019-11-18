% Score Number 35.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "35." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      %\mark \markup { \bold "35." }
      \numericTimeSignature
      \time 4/4

      \partial 4
      g4(
      c-.) c-. c-. c-.
      c( e8 d c4-.) g(
      c-.) c-. c-. c-.
      c->( e8 d c4-.) g(
      d'2.->) g,4(
      e'2.-> d4
      a4 b8 c d4-.) d-.
      b2-> g4-. g8 b
      d4-. g,8( b d4-.) g,8 b
      d2.-> r4
      r1
      r2 r4 g,
      f'2.-> g,4
      e'2.-> e8( f
      g4 d-.) d-. d-.
      g->( c,-.) c-. c8( d
      e4-.) e8( d c4-.) c8 bes
      a2 r4 a-.
      g8 a b c d4-. g,-.
      g'8 f e d c4-. \ottava #1 g'-.
      g8 a b c d4-. g,-.
      g'8 f e d c4-. \ottava #0 c,8 e
      g4-. g8( e c4-.) c-.
      a'2. f8 d
      g4->( e8 c f4 d8 b
      c2.) \bar "|."

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key c \major
      \clef bass
      \numericTimeSignature
      \time 4/4

      \partial 4
      r4
      c g' e g
      c, g' e g
      c, g' e g
      c, g' e g
      b, d g r
      c, e g r
      d-. d'( c a
      g d' b) r
      r1
      r2 r4 g8( b
      d4-.) g,8( b d4-.) g,8( b
      d2.) r4
      b,4 g' d g
      c, g' e g
      b, g' d g
      c, g' e g
      c, g' e g
      f( a c) r
      g( d' f-.) r
      g,( c e-.) r
      g,( d' f-.) r
      g,( c e-.) r
      <e, c' >-. r <e c' >-. <e c' >-.
      f( a c-.) r
      <f, e' >-. r <f d' >-. r
      \clef treble
      <c' e > <e g > <c e > \bar "|."

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
