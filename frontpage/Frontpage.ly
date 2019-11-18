\version "2.18.2"

\bookpart {
  \header {
    tagline = ##f
  }

  \markup \tiny {
    \vspace #2
    \fill-line {
      \hspace #-26
      \column  {
        \line { \epsfile #X #20 #"eps-files/corner_ol.eps" }
      }
      \hspace #98
      \column  {
        \line { \epsfile #X #20 #"eps-files/corner_or.eps" }
      }
    }
  }

  \markup {
    \vspace #5
    \fill-line {
      \center-column {

        \fontsize #8 \smallCaps "Die allerleichtesten Übungsstücke"
        \hspace #2
        \fontsize #8 \smallCaps "für den Klavierunterricht"
        \vspace #5
        \epsfile #X #20 #"eps-files/decor.eps"
        \vspace #4
        \fontsize #3 "von"
        \vspace #2
        \fontsize #5 \smallCaps "Louis Köhler"
        \vspace #0.2
        \fontsize #4 \fill-line \smaller { (1820-1886) }
        \vspace #2
        \fontsize #3 "Op.190"
      }

    }
  }

  \markup \tiny {
    \vspace #17
    \fill-line {
      \hspace #-26
      \column  {
        \line { \epsfile #X #20 #"eps-files/corner_ul.eps" }
      }
      \hspace #98
      \column  {
        \line { \epsfile #X #20 #"eps-files/corner_ur.eps" }
      }
    }
  }
  \paper {
    bottom-margin = 4
  }


}