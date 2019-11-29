\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\paper {
  ragged-last = ##f
}

pieceNumber="32"

\include "../global-files/gitlink.ily"
\include "../global-files/header.ily"

% Score Number 32.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "32." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key g \major
      \mark \markup { \bold "32." }
      \numericTimeSignature
      \time 4/4
      \repeat volta 2 {
        d2( b4 g
        a-.) a-. a-. r
        d2( c4 a
        b2) r
        d( b4 g
        a c8 b a4-.) d(
        b g a b
        g2) r
      }
      \repeat volta 2 {
        a4( d-.) d-. d-.
        fis( d-.) d-. r
        b2( d4 b
        a2.) r4
        a( d-.) d-. d-.
        b( e-.) e-. r
        a,2( b4 cis
        d2) r
        d4( e8 d b4 g
        a-.) a-. a-. r
        d( e8 d c4 a
        b2) r
        g'( d4 c
        a) a( e' c
        b d c a
        g2) r
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
        g4 d' b d
        fis, d' c d
        fis, d' a d
        g, d' b d
        g, d' b d
        fis, d' c d
        g, b c d
        b d g, r
      }

      \repeat volta 2 {
        d a' fis a
        d, a' fis a
        d, g b g
        fis a d, a'
        fis d' a d
        g, e' b e
        a, cis d e
        fis d c a
        g d' b d
        fis, d' c d
        fis, d' a d
        g, b g d
        b g' d g
        c, a' e a
        d, b' a fis
        g-. d-. g,-. r
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
