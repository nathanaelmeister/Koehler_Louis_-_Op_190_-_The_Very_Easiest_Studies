%% Score Number 4.

\score {
  \new PianoStaff \with {
    instrumentName = \markup { \bold \huge \number { "4." }}
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      \numericTimeSignature
      \time 4/4
      %\mark  \markup { \bold "4." }

      e4 c d2 | f4 d e2 | c4 e g f | e2 d | e4 c d2 | f4 d e2 | g4 e c e | d2 c \bar "|." \override Staff.TimeSignature #'break-visibility = ##(#f #t #t) \break


    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key c \major
      \numericTimeSignature
      \time 4/4
      e4 c d2 | f4 d e2 | c4 e g f | e2 d | e4 c d2 | f4 d e2 | g4 e c e | d2 c \bar "|."

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
