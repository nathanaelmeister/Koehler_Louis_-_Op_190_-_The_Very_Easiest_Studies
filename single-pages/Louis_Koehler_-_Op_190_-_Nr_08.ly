\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\paper {
  ragged-last = ##f
}

pieceNumber="8"

\include "../global-files/gitlink.ily"
\include "../global-files/header.ily"

%% Score Number 8.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "8." }
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
      \mark  \markup { \bold "8." }

      e4 f g e |
      d e f d |
      c d e c |
      e2 d |
      e4 f g e |
      d e f d |
      c e g e |
      d2 c \bar "|." 

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key c \major
      \clef treble
      \numericTimeSignature
      \time 4/4
      c1 |
      g' |
      e2 c | 
      g'1 | 
      c, | 
      g' | 
      e4 c e g | 
      f2 e  \bar "|."
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
