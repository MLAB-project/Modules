%Class for Poster2014 ( without guarantee:-))

\message{*****Class for the Poster 2016 *****}
\message{(c) Frantisek Rund, inspired by templates for Internoise2004 (Marek Brothanek), Radioengineering (Josef Dobes, Jakub Stastny, Miroslav Strupl), Poster 2005 (Karel Motl, Kamil Ptacek)\dots}
\NeedsTeXFormat{LaTeX2e}%[1996/12/01]
\ProvidesClass{poster16}
\RequirePackage{graphicx}
\RequirePackage{times}
\RequirePackage{fancyhdr}
\LoadClass[twocolumn,a4paper,twoside,10pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\hoffset=-28mm % 
\voffset=-21.5mm % 
\oddsidemargin=22.6mm %
\evensidemargin=17.6mm % 
\topmargin=10mm % 
\textwidth=175mm %
\textheight=241mm % 
\headsep=9mm 
\parindent=7.5mm %
\parskip=2mm %

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\widowpenalty 10000
\clubpenalty 10000
\displaywidowpenalty 10000

\def\@seccntformat#1{\csname the#1\endcsname.\space}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\headerfont}{\footnotesize\sffamily\selectfont}
\newcommand{\abstractfont}{\normalsize\itshape\selectfont}
\newcommand{\titlefont}{\fontseries{b}\fontshape{n}\fontsize{20pt}{20pt} \selectfont}
\newcommand{\titleautfont}{\large\itshape\selectfont}
\newcommand{\titleaddfont}{\normalsize\selectfont}
\newcommand{\sectionfont}{\fontsize{14pt}{1}\fontseries{b}\selectfont}
\newcommand{\subsectionfont}{\large\fontseries{b}\selectfont}
\newcommand{\captionfont}{\footnotesize\selectfont}
\newcommand{\tablefont}{\footnotesize\bfseries\sffamily\selectfont}
\newcommand{\reffont}{\footnotesize\selectfont}
%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%
\columnsep=6mm

\emergencystretch=4em

%%%%%%%%%%%%%
\fancypagestyle{first}{
\fancyhead[LO]{\headerfont POSTER 2016, PRAGUE MAY 24\\[-3mm]}
\fancyhead[CO]{}
\fancyhead[RO]{\headerfont \thepage\\ [-3mm]}
\fancyhead[LE]{\headerfont \thepage\\ [-3mm]}
\fancyhead[CE]{}

\lfoot{}
\rfoot{}
\cfoot{}
}
\fancypagestyle{other}{
\fancyhead[LO]{\headerfont POSTER 2016, PRAGUE MAY 24\\[-3mm]}
\fancyhead[CO]{}
\fancyhead[RO]{\headerfont \thepage\\ [-3mm]}
\fancyhead[LE]{\headerfont \thepage\\ [-3mm]}
\fancyhead[CE]{}

\lfoot{}
\rfoot{}
\cfoot{}
}
\newcommand*\headtitle[1]{\fancyhead[RE]{\headerfont {#1} \\ [-3mm]}}
\pagestyle{other}

%%%%%%title

\newcommand*\affiliation[1]{\def\@affiliation{#1}}
\newcommand*\affiliationmark[1]{\textsuperscript{#1}}
\newcommand*\email[1]{\def\em@il{#1}}

\title{TITLE here}
\author{AUTHOR here}
\affiliation{AFFILIATION here}
\email{EMAIL here}

\newbox\temp@box

\renewcommand\maketitle{%
  \par
  \begingroup
    \gdef\@thanks{}%
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark
        {\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \normalfont\@thefnmark~##1}%
    \twocolumn[\@maketitle]%
    \@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \setcounter{section}{0}%
  \thispagestyle{first}%
}
\renewcommand\@maketitle{%
  \newpage
  \null
  \begin{center}% 
  \vspace*{-1.5mm}
%  \let \footnote \thanks
  {\titlefont 
  \@title \par}
  \vspace{2em}
  {
   \titleautfont
    \ignorespaces
   \@author
   \par}%
\vspace{1em}
  {
   \titleaddfont
   \ignorespaces
   \@affiliation\par}%
   \vspace{1em}
  {\titleaddfont
  \em@il\par}%
  \vspace{2em}
  \unhbox\temp@box
    \end{center}%
  \par
  \vspace{-5mm}
  }


\renewenvironment{abstract}
  {\parindent=0pt%
   \abstractfont%\
  \setlength{\baselineskip}{2.8ex}
  \textup{\textbf{Abstract.}}
}
  {}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\addtocounter{secnumdepth}{-1}
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {9mm}
				   {0.8mm}
                                   {
				    \sectionfont
				   }}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
				    {9mm}
				    {0.8mm}
                                    {
				    \subsectionfont
				    }}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
				    {9mm}
				    {0.8mm}
				    {\normalsize\fontseries{b}\selectfont}
				    }

%%%%%%%%%%%%%%%%%
\renewenvironment{thebibliography}[1]
     {\section*{\refname}%      
       \reffont
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \itemsep\z@
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
\renewcommand\baselinestretch{0.9}%
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist} 
%%%%%%%%%%%%%%%


\newenvironment{authorcv}[1]{\parindent=0pt
\begin{center}\section*{About Authors\dots}\end{center}
\textbf{#1}}{}				    

%%%%%%
\newenvironment{keywords}{\section*{Keywords} 
\noindent
\hspace{0.75cm}\begin{minipage}[t]{22em}}{\end{minipage}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\belowcaptionskip}{0em}

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \begin{center}
{\parbox[t]{1.5cm}{\hspace{5mm}{\captionfont \bfseries #1.}}%
\parbox[t]{.75\columnwidth}{ \captionfont {#2}}}%
    \end{center}
  \vskip\belowcaptionskip\vspace{-0.8cm}
  } 

\newcommand\captionwide[1]{
\vskip\abovecaptionskip
  \begin{center}
{\parbox[t]{1.5cm}{\hspace{5mm}{\refstepcounter{figure}\captionfont \bfseries \figurename \thefigure.}}%
\parbox[t]{.8\textwidth}{ \captionfont {#1}}}%
    \end{center}
  \vskip\belowcaptionskip\vspace{-0.8cm}
  } 
%\small\refstepcounter{figure}%
%   \centering\figurename\ \thefigure :\ #1} 
%\long\def\@makecaption#1#2{%
%  \vskip\abovecaptionskip
%  \begin{center}
%{\parbox[t]{1.5cm}{\hspace{5mm}#1.}\parbox[t]{63mm}{ \captionfont {#2}}}
%    \end{center}
%  \vskip\belowcaptionskip\vspace{-0.8cm}
%  } 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setcounter{tocdepth}{0}
\pagestyle{fancy}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\figurename}{{%\captionfont 
%\bfseries 
Fig.}}
%\renewcommand{\thefigure}{{\captionfont 
%\bfseries \arabic{figure}}}
\renewcommand{\tablename}{{%\captionfont 
%\bfseries 
Tab.}}
%\renewcommand{\thetable}{{\captionfont 
%\bfseries \arabic{table}}}

