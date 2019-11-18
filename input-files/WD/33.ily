% Score Number 33.

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
      \mark  \markup { \bold "33." }
      \numericTimeSignature
      \time 2/4

      r4 \times 2/3 { c,8 e g }
      r4 \times 2/3 { c,8 f a }
      r4 \times 2/3 { c,8 e g }
      r4 \times 2/3 { e8 g c }
      r4 \times 2/3 { f,8 a d }
      r4 \times 2/3 { d,8 g b }
      r4 \times 2/3 { e,8 g c }
      r4 \times 2/3 { c,8 e g }
      r4 \times 2/3 { c,8 e g }
      r4 \times 2/3 { c,8 f a }
      r4 \times 2/3 { c,8 e g }
      r4 \times 2/3 { e8 g c }
      r4 \times 2/3 { f,8 a d }
      r4 \times 2/3 { d,8 g b }
      r4 \times 2/3 { c,8 e g }
      c2
      \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
      \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
      \mark \markup { \small \italic {"Fine."}} \bar "|." \break
      r4 \times 2/3 { g8 b d }
      r4 \times 2/3 { g,8 b d }
      r4 \times 2/3 { fis,8 a d }
      r4 \times 2/3 { fis,8 a d }
      r4 \times 2/3 { a8 c d }
      r4 \times 2/3 { a8 c d }
      r4 \times 2/3 { g,8 b d }
      r4 \times 2/3 { g,8 b d }
      r4 \times 2/3 { g,8 b e }
      r4 \times 2/3 { a,8 c e }
      r4 \times 2/3 { fis,8 a d }
      r4 \times 2/3 { g,8 b d }
      r4 \times 2/3 { e,8 a c }
      r4 \times 2/3 { d,8 fis a }
      r4 \times 2/3 { g8 d' c }

      \times 2/3 { b8 a g } \times 2/3 { f e d }
      \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
      \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
      \mark \markup { \small \italic { "D.C. al Fine"}} \bar "|."

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key c \major
      \clef bass
      \numericTimeSignature
      \time 2/4

      \times 2/3 { c8 e g } r4
      \times 2/3 { c,8 f a } r4
      \times 2/3 { c,8 e g } r4
      \times 2/3 { e8 g c } r4
      \times 2/3 { f,8 a d } r4
      \times 2/3 { d,8 g b } r4
      \times 2/3 { e,8 g c } r4
      \times 2/3 { c,8 e g } r4
      \times 2/3 { c,8 e g } r4
      \times 2/3 { c,8 f a } r4
      \times 2/3 { c,8 e g } r4
      \times 2/3 { e8 g c } r4
      \times 2/3 { f,8 a d } r4
      \times 2/3 { d,8 g b } r4
      \times 2/3 { c,8 e g } r4
      R2 \bar "|." \break
      \times 2/3 { g8 b d } r4
      \times 2/3 { g,8 b d } r4
      \times 2/3 { fis,8 a d } r4
      \times 2/3 { fis,8 a d } r4
      \times 2/3 { a8 c d } r4
      \times 2/3 { a8 c d } r4
      \times 2/3 { g,8 b d } r4
      \times 2/3 { g,8 b d } r4
      \times 2/3 { g,8 b e } r4
      \times 2/3 { a,8 c e } r4
      \times 2/3 { fis,8 a d } r4
      \times 2/3 { g,8 b d } r4
      \times 2/3 { c,8 e a } r4
      \times 2/3 { d,8 fis a } r4
      \times 2/3 { g8 b d } r4
      R2 \bar "|."

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
