% mlthesis.cls
% author: Stefan Harmeling
% date:   2018-02-01

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mlthesis}[2018/02/01 Machine Learning Thesis]

% extends 'report.cls'
\LoadClass{report}
\RequirePackage{pdfpages}
\RequirePackage[top=30mm,bottom=20mm,left=25mm,right=25mm,a4paper]{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}

% redefine \today to show the month with name
\def\today{\number\day\space\ifcase\month\or January\or February\or
  March\or April\or May\or June\or July\or August\or September\or
  October\or November\or December\fi\space\number\year}

% define variable and command to set thesis number
\def\@thesistype{---}
\providecommand{\thesistype}[1]{\def\@thesistype{#1}}

% create our own \maketitle command
\renewcommand{\maketitle}{
  \thispagestyle{empty}
  \let \footnote \thanks
  \normalfont
  \begin{center}%
    {\scshape\uppercase{Machine Learning --- Heinrich Heine Universität}\par}
    \vspace{5ex}
    {\@thesistype \hfill \@date\par}
    \vspace{7ex}
    {\bfseries\large\uppercase\expandafter{\@title} \par}
    \vspace{7ex}
    \begin{tabular}[t]{c}%
      \@author
    \end{tabular}
  \end{center}
  \vspace{7ex}
  \@thanks
}

% create our own abstract environment
\renewenvironment{abstract}{\noindent{\bfseries Abstract.}}{}
\newenvironment{zusammenfassung}{\medskip\noindent{\bfseries Zusammenfassung.}}{\vfill}

\newenvironment{note}{\medskip\noindent{\bfseries Note.}}{}

% macro to create new abstract-like environments
%\providecommand{\newabstractlikeenvironment}[1]{\newenvironment{#1}{\medskip\noindent{\bfseries #1.}}{}}

\endinput
