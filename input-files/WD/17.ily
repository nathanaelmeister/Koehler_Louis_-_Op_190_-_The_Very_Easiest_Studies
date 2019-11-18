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
      \mark  \markup { \bold "17." }
      e2 c4 g' |
      e2 c4 g' |
      f4 d g2-> |
      e4 c g'2-> |
      e2 c4 g'4 |
      e2 c4 g' |
      g( d-.) d-. e-. |
      c2 c \mark \markup { \small \italic { Fine.}} \bar "||"
      c2 f4 a | g2-> e4 g | f2-> d4 f | e2 c4-. r | c2 f4 a | g2-> e4 g | fis d fis d | g d e d | fis d e fis | g-. g-. g-.
      \mark  \markup { \small \italic { "D.C. al Fine."}}  g-.
      \bar "|." \override Staff.TimeSignature #'break-visibility = ##(#f #t #t) \break


    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key c \major
      \clef bass
      \numericTimeSignature
      \time 4/4
      c4 g' e g |
      c, g' e g |
      b, g' d g |
      c, g' e g |
      c, g' e g |
      c, g' e g |
      b, g' f g |
      e g c,2 \bar "||"
      c4 f a f |
      c e g e |
      b d g d |
      c e g e |
      c f a f |
      c e g e |
      d-. r <a' d,>2 |
      <d, b'>2 <b' g>2 |
      <d, a'>2 <d c'>2 |
      <g b>4-. r r2 \bar "|."
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
