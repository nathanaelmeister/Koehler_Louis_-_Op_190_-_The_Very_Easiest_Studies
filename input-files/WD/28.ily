% Score Number 28.

\score {
  \new PianoStaff \with {
    instrumentName =  ""
    %\markup { \bold \huge { \larger "2." }}
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c' {
      \key c \major
      \numericTimeSignature
      \mark  \markup { \bold "28." }
      \numericTimeSignature
      \time 6/8
      \repeat volta 2 {
        g'4 g8 g a b |
        c4 e8 g4 r8 |
        g,4 g8 g a b |
        c4 e8 g4 r8 |
        c,8 d e f4 c'8 |
        a4.-> f8 r4 |
        g,8 a b c4 g'8 |
        e4.-> c8 r4 |
        \repeat unfold2 {d4 g8 d4.}
        \repeat unfold2 {d8 b g} b4-> a8 g4. \bar ":|.|:"
      }
      \repeat volta 2 {
        d'4 b8 g4 r8 |
        g'4 e8 c4 r8 |
        d8 b g d' b g |
        g'4 e8 c4 r8 |
        \repeat unfold2 {c4 c8 a'4.->}
        g8 e c g' e c |
        e4-> d8 c4 r8 \bar ":|."
      }

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key c \major
      \clef bass
      \numericTimeSignature
      \time 6/8

      \repeat volta 2 {
        \repeat unfold 8 {c8 e g}
        \repeat unfold 4 {c,8 f a}
        \repeat unfold 4 {c,8 e g}
        \repeat unfold 6 {b, d g}
        <d fis>4. g
      }
      \repeat volta 2 {
        \bar ":|.|:"
        \repeat unfold 2 {f8 g b}
        \repeat unfold 2 {e, g c}
        \repeat unfold 2 {f, g b}
        \repeat unfold 2 {e, g c}
        \repeat unfold 2 {f, a c}
        \repeat unfold 4 {e, g c}
        <g b >4. c4 r8
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
