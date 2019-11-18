% Score Number 27.

\score {
  \new PianoStaff \with {
    instrumentName =  ""
    %\markup { \bold \huge { \larger "2." }}
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key f \major
      \numericTimeSignature
      \mark  \markup { \bold "27." }
      \numericTimeSignature
      \time 3/4
      a2. | a2 a4 | c2.-> | a | f | g | a | r |
      a | a2 a4 | c2. | a | f'-> | b, | c | R |
      a | a2 a4 | c2.-> | bes | bes | a | g | R |
      a | a2 a4 | c2.-> | bes | a2 f4 | g a g | f2. | R
      \bar "|."

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key f \major
      \clef bass
      \numericTimeSignature
      \time 3/4

      f4 a c f, a c f, a c f, a c d, f a e g c f, a c f, a c
      f, a c f, a c f, a c f, a c f, a d g, d' f e d c bes a g
      f a c f, a c fis, a d g, b d e, g c f, a c e, g c bes a g
      f a c f, a c es, f a d, f bes c, f a c, c' bes a c a f2.
      \bar "|."

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
