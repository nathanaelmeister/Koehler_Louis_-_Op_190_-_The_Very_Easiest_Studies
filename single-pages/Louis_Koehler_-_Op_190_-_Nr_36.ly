\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\paper {
  ragged-last = ##f
}

pieceNumber="36"

\include "../global-files/gitlink.ily"
\include "../global-files/header.ily"

% Score Number 36.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "36." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      \mark \markup { \bold "36." }
      \numericTimeSignature
      \time 2/4

      \repeat volta 2 {
        g8( a16 b c8-.) g'-. |
        e4-> c8-. r |
        g8( a16 b c8-.) g'-. |
        e4->( c8-.) r |
        e8-. e-. f16( e d e
        f8-.) f-. f4(
        d8-.) d-. e16( d c d
        e8-.) e-. e4->
        d8( e16 fis g8-.) g-.
        d e16( fis g4)
        b,8-. e16( d a8-.) e'16 d |
        g,4 r \bar ":|.|:"
      }

      \repeat volta 2 {
        g4 f'
        g, f'
        g,8 b d f
        e4( c8-.) r
        g4 g'
        g, g'
        a,8 cis e g
        f4->( d8-.) r
        f8.->( d16 b8-.) b-.
        g'8.->( e16 c4)
        f16 e d c b8-. b-.
        g'16 f e d c4
        c8( d16 e f8-.) c'-.
        a4->( f8-.) r
        g,8( a16 b c8-.) g'-.
        e4( c8-.) r
        c4 bes'
        c, a'
        c,8 e g bes
        a4->( f8-.) r
        g8( a16 b c8-.) c-.
        b( c16 d c4)
        e,8-. a16( g d8-.) a'16( g
        c,4) r
      }

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key c \major
      \clef treble
      \numericTimeSignature
      \time 2/4

      \repeat volta 2 {
        \repeat unfold 4 {
          <c e>4 <c e>8-. <c e>-. |
        }
        <c g'>-. <c g'>-. <c g'>4 |
        <a f'>8-. <a f'>8-. <a f'>4 |
        <b g'>8-. <b g'>8-. <b g'>4 |
        <c g'>8-. <c g'>-. <c g'>4 |
        <b g'>4 <b g'>8-. <b g'>-. |
        <b g'>4 <b g'> |
        <d g>8-. r <d fis>-. r |
        r d-. g,-. r \bar ":|.|:"
      }

      \repeat volta 2 {
        <b d>8 g <b d> g |
        <c e>8 g <c e> g |
        <b d>8 g <b d> g |
        <c e>8 g <c e> r |
        <cis e>8 a <cis e> a |
        <d f> a <d f> a |
        <cis e> a <cis e> a |
        <d f> a <d f>-. r |
        b g' d g |
        c, g' e g |
        b, g' d g |
        c, g' e c |
        <f a>4 <f a>8-. <f a>-. |
        <f a>4 <f a>8-.r |
        <c e>4 <c e>8-. <c e> |
        <c e>4 <c e>8-. r |
        <e g>8 c <e g> c |
        <f a>8 c <f a> c |
        <e g>8 c <e g> c |
        <f a>8 c <f a> c |
        <e g>4 <e g>8-. <e g>8-. |
        <c e>4 <c e> |
        r <g f'>8-. r |
        r <c e>-. <c e>-. r
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
