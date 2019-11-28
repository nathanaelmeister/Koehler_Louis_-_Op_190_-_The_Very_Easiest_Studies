\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\include "global-files/gitlink.ily"
\include "global-files/paper.ily"

\include "frontpage/Frontpage.ly" \pageBreak

\include "frontpage/Vorwort.ily" \pageBreak

%% Bookpart Number 1. (1-18)

\bookpart {
  \header {
    title = \markup {
      \fill-line {
        \center-column {
          "Die allerleichtesten Übungsstücke"
          "für den Klavierunterricht"
        }
      }
    }
    subtitle = \markup { \vspace #2 { "Stücke im Violinenschlüssel" }}
    composer = "Louis Köhler; Op.190"
    %opus = "Op.190"
  }
  \include "input-files/01.ily"
  \include "input-files/02.ily"
  \include "input-files/03.ily"
  \include "input-files/04.ily"
  \include "input-files/05.ily"
  \include "input-files/06.ily"
  \include "input-files/07.ily"
  \include "input-files/08.ily"
  \include "input-files/09.ily"
  \include "input-files/10.ily"
  \include "input-files/11.ily"
  \include "input-files/12.ily"
  \include "input-files/13.ily"
  \include "input-files/14.ily"
  \include "input-files/15.ily"
  \include "input-files/16.ily"
  \include "input-files/17.ily"
  \include "input-files/18.ily"
}

%% Bookpart Number 2. (19-23)

\bookpart {
  \header {
    subtitle = "Stücke im Violon- und Basschlüssel"
    subsubtitle = \markup { \null }
  }
  \include "input-files/19.ily"
  \include "input-files/20.ily"
  \include "input-files/21.ily"
  \include "input-files/22.ily"
  \include "input-files/23.ily"
  \include "input-files/24.ily"
  \include "input-files/25.ily"
  \include "input-files/26.ily"
  \include "input-files/27.ily"
  \include "input-files/28.ily"
  \include "input-files/29.ily"
  \include "input-files/30.ily"
  \include "input-files/31.ily"
  \include "input-files/32.ily"
  \include "input-files/33.ily"
  \include "input-files/34.ily"
  \include "input-files/35.ily"
  \include "input-files/36.ily"
}
