\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\paper {
  ragged-last = ##f
}

pieceNumber="29"

\include "../global-files/gitlink.ily"
\include "../global-files/header.ily"

% Score Number 29.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "29." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      \mark \markup { \bold "29." }
      \numericTimeSignature
      \time 4/4
      g4 e' c2 |
      g4 e' c2 |
      g4 f' d2 |
      g,4 f' d2 |
      e4 d c e |
      a, c b d |
      c e d b |
      c1 \bar "||"
      g2 b |
      d f |
      e4 c g' e |
      d2. r4 |
      g,4-. g( b-.) b( |
      d-.) d( f-.) f( |
      e c g' e |
      d2.) r4 |
      g,4 e' c2 |
      g4 e'8 d c2 |
      g4 f' d2 |
      g,4 f'8 e d2 |
      e4 d c e |
      a, c b d |
      c e g, e' |
      c1 \bar "|."

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
      b, g' f g |
      b, g' f g |
      c, d e c |
      f e d f |
      e g f g |
      e g c,2 \bar "||"
      b4 g' d g |
      b, g' d g |
      c, g' e g |
      b, g' d g |
      b, g' d g |
      b, g' d g |
      c, g' e g |
      b, g' f d |
      c g' e g |
      c, g' e g |
      b, g' d g |
      b, g' d g |
      c, d e c |
      f e d f |
      e g c, g' |
      <c, e >1 \bar "|."

    }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
