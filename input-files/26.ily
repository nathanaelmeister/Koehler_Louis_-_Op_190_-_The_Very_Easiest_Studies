% Score Number 26.

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \bold \huge \number { \larger "26." }
    }
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key f \major
      %\mark  \markup { \bold "26." }
      \numericTimeSignature
      \time 4/4
      
      a2 c4 a |
      f2 f |
      g bes4 g |
      e1 |

      f2 a |
      g a4 b |
      c g d' b |
      c2 r |

      a2 c4 a |
      f2 f |
      bes4 f d' bes |
      f'2.-> r4 |

      c4-. c( d c |
      a-.) c( d c |
      g-.) c( d c |
      a'2-> f |

      c4-.) c( d c |
      a-.) c( d c |
      d g, bes e, |
      f2.) r4
      \bar "|."

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key f \major
      \clef bass
      \numericTimeSignature
      \time 4/4

      f4 c' a c |
      f, c' a c |
      e, c' g c |
      g c bes c |

      a c f, c' |
      e, g f d |
      e g f g |
      e g c, r |

      f c' a c |
      f, c' a c |
      d, bes' f bes |
      d, bes' f bes |

      e, c' g c |
      f, c' a c |
      e, c' bes c |
      f, c' a c |

      e, c' g c |
      f, c' a c |
      bes-. r <c, g' >-. r |
      <a' f > c f, r
      \bar "|."

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
