\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\paper {
  ragged-last = ##f
}

pieceNumber="16"

\include "../global-files/gitlink.ily"
\include "../global-files/header.ily"

%% Score Number 16.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "16." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \mark \markup { \bold "16." }

      e2 c d1 f2 d e1 g2 f e d c d e d e c d1 f2 d e1 e2 c
      d g <c, e>2 <b d>2 c1  \bar "|." 

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key c \major
      \clef treble
      \numericTimeSignature
      \time 4/4
      c4 g' e g b, g' f g d g b, g' c, g' e g e g d g c, g'
      f g e g b, g' c, g' b, g' c, g' e g b, g' f g d g b, g'
      c, g' e g c, g' e g f a d, f g2 f <e c>1
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
