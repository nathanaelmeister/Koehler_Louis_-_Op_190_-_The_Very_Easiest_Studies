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
      \numericTimeSignature
      \time 4/4
      \mark  \markup { \bold "18." }
      \partial 4
      c,4-. |
      e-. e-. c-. c-. |
      e-. e-. c-. c-. |
      d-. d-. g-. g-. |
      e2->( c4-.) c-. |
      e-. e-. c-. c-. |
      e-. e-. c-. c-. |
      d-. d-. <c fis>-. <c fis>-. |
      <b g'>2 r4 \bar "||" \break

      \bar ".|:"
      \partial 4
      b4-. |
      d-. d-. g-. g-. |
      e2->( c4-.) c-. |
      d-. d-. g-. g8( f |
      e2-> c4-.) c-. |
      e-. e-. c-. c-. |
      e8( f e d c4-.) c-.|
      d-. d-. g-. g-. |
      c,2 r4
      \bar ":|."

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key c \major
      \clef bass
      \numericTimeSignature
      \time 4/4
      %18.
      r4 | c,( g' e g | c, g' e g | b, g' d g) | c, g' e g | c, g' e g | c, g' e g | b, r d r | g2 r4
      r4 | b, g' d g | c, g' e g | b, g' d g | c, g' e g | c, g' e g | c, g' e g | b, g' d g | e g c,

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
