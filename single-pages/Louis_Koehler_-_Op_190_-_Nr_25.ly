\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\paper {
  ragged-last = ##f
}

pieceNumber="25"

\include "../global-files/gitlink.ily"
\include "../global-files/header.ily"

%% Score Number 25.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "25." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key g \major
      \mark \markup { \bold "25." }
      \numericTimeSignature
      \time 4/4
      \repeat volta 2 {
        b4 b b b |
        d2 b4 r |
        a a a d |
        b2 r |

        b4 b b b8 c |
        d2 b4 r |
        a d cis e |
        d2 r
      }
      \repeat volta 2 {
        \bar ":|.|:"
        c2 e |
        d4-. d-. b2 |
        c4-. c-. e-. e-. |
        e4( d8 e d2) |

        b4-. b-. c8 b a b |
        d2 b4 r4 |
        a4-. a( e' d |
        g,2) r
      }
    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key g \major
      \clef bass
      \numericTimeSignature
      \time 4/4
      \repeat volta 2 {
        g4 d g d |
        b' d, g d |
        fis d fis d |
        g d g b |

        g d g d |
        b' d, g d |
        fis d e g |
        fis a d, r
      }
      \repeat volta 2 {
        \bar ":|.|:"
        a' d, c' d, |
        b' d, g d |
        a' d, c' d, |
        b' d, g d |

        g d g d |
        b' d, g d |
        fis-. r <d c' >-. r |
        <g b >( d' g,) r
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