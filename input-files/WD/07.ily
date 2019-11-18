%% Score Number .

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
      \numericTimeSignature
      \time 4/4
      \mark  \markup { \bold "7." }

      e2 f | g f | e f | g1 | f2 e | d e | f d | c1  \bar "|." \override Staff.TimeSignature #'break-visibility = ##(#f #t #t) \break


    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c {
      \key c \major
      \clef bass
      \numericTimeSignature
      \time 4/4
      c2 d | e d | c d | e1 | d2 e | f e | d g | <e c>1 \bar "|."
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
