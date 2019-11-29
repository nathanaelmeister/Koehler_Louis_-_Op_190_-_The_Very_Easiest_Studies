\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\paper {
  ragged-last = ##f
}

pieceNumber="31"

\include "../global-files/gitlink.ily"
\include "../global-files/header.ily"

% Score Number 31.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "31." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      \mark \markup { \bold "31." }
      \numericTimeSignature
      \time 4/4

      a8 b c d e d c b
      a b c d e d c a
      b c d e b c d e
      c2->( a4-.) r
      a8 b c d e d c b
      a b c d e d c a
      b c d e b c d e
      a,2. r4
      \repeat volta 2 {
        c8 d e f g f e d
        c d e f g4-. r
        b,8 c d e f e d c
        b c d e f4-. r
        a,8 b c d e d c b
        a b c d e d c a
        b c d e b c d e
        a,2. r4
      }
    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key c \major
      \clef treble
      \numericTimeSignature
      \time 4/4

      a4 e' c e
      a, e' c e
      gis, e' gis, e'
      a, e' c e
      a, e' c e
      a, e' c e
      gis, e' d e
      c e a, r
      \repeat volta 2 {
        c g' e g
        c, g' e g
        d gis f gis
        d gis f gis
        c, e a, e'
        c e a, e'
        gis, e' d e
        c e a, r
      }
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
