%%%%%%%%%
%
% Style file used by UC Berkeley RAIL folks.
% This is an edited version of the Google DeepMind tech report template, used under CC Licence, obtained from tex sources of Google DeepMind arxiv papers. There are several changes including font sizes, abstract formatting, title formatting, figure formatting, colors, and math fonts which are allowed per the license.
% 
%
% Use it in the following way, with the full set of option possible:
% \documentclass[11pt, a4paper, twocolumn, logo, copyright, nonumbering, 
% internal]{berkeley} 
%
% Options:
%    - 11pt: Sets the normal font size of the text. Can be only 10, 11, 12pt.
%    - a4paper: Paper size. Usually would not adjust.
%    - twocolumn: Makes the paper into two column mode; single column by default.
%    - logo: Adds the BAIR logo to the top left. No logo included if left out.
%    - copyright: Add a copyright statement to the first page of the paper in the left footnote
%    - nonumbering: Uses unnumbered sections.
%    - internal: for internal only docs that should not be shared externally. 
%           Can only use techreportnumber with this option.
%
% Date of Paper
%   The report is by default given the curren date in the top right. If you want to fix the 
%   date: add the date to your preamble with your own date as follows:
%   \renewcommand{\today}{1 January 2000}
%
% Confidentiality
%   Change the confidentiality statement for internal docs by adding this in the preable 
%   \renewcommand{\internal}{Confidential.}
%   
% ----------------
% Licence: This template is released under the Creative Commons licence 
% Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)
%
%
% Known issues:
%   - Package todonotes does not work in the abstract
%
% Version history: 
% v0.1 - Jan 2024: Obtained from arxiv papers
% v0.2 - Feb 2024: revised some details
% %%%%%%%%%%%%%%%


\NeedsTeXFormat{LaTeX2e}

% Palatino font %%%%---- to switch to computer modern font, comment next three lines, and line 126
\RequirePackage{tgpagella} % text only
\RequirePackage{mathpazo}  % math & text
\RequirePackage{inconsolata} % for tt font



%%======== Pckage options and base class ========
\RequirePackage{tcolorbox}
\RequirePackage{xifthen}
\newboolean{nonumbering}
\newboolean{logo}
\newboolean{address}
\newboolean{copyright}
\newboolean{internal}
\DeclareOption{nonumbering}{\setboolean{nonumbering}{true}}
\DeclareOption{logo}{\setboolean{logo}{true}}
\DeclareOption{address}{\setboolean{address}{true}}
\DeclareOption{copyright}{\setboolean{copyright}{true}}
\DeclareOption{internal}{\setboolean{internal}{true}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions
\LoadClass{extarticle}

%%======== Packages Required ========
% Fonts and language
\AtEndOfClass{\RequirePackage[tracking=smallcaps]{microtype}}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{amsthm, amsmath, amsfonts, amssymb}
\RequirePackage{cmap}
\RequirePackage[T1]{fontenc}
\RequirePackage{url}
\RequirePackage{pifont}
\RequirePackage{textcomp} % For copyright symbol styling
\RequirePackage[overload]{textcase}
%\RequirePackage{balance}
%% *Graphics, tables and other formatting
\RequirePackage{graphicx}
\RequirePackage{colortbl}

\RequirePackage{booktabs}
\RequirePackage{changepage}
\RequirePackage{enumitem} % For reducing bullet list item separation
\RequirePackage{tabularx}
\RequirePackage{datetime}
% Headers and footers
\RequirePackage{fancyhdr}  % custom headers/footers
\RequirePackage{lastpage}  % Number of pages in the document
% Lists and their spacing
\RequirePackage{enumitem}
\setlist[itemize]{noitemsep}
\setlist[enumerate]{noitemsep}
% % Title, Abstract, Bibliography
\RequirePackage[explicit]{titlesec}
\RequirePackage{bibentry}
\RequirePackage{mdframed}
\RequirePackage{caption}
\RequirePackage{needspace}

% \RequirePackage[svgnames]{xcolor}
\definecolor{TinaCrimson}{HTML}{DC143C} % Renamed from Crimson
% \RequirePackage[dvipsnames]{xcolor}
% \definecolor{Crimson}{HTML}{990000}

\definecolor{CalGoldHex}{HTML}{fff7e8}
% \definecolor{CalGoldHex}{HTML}{FFF5E1}
\definecolor{IronGrey}{HTML}{6D6E71}
\definecolor{YaleBlue}{HTML}{2A5487}

\RequirePackage[colorlinks=true, allcolors=TinaCrimson]{hyperref}

%%======== Can use any of these fonts ========
% \RequirePackage{charter}
% \RequirePackage[scaled]{helvet}
% \RequirePackage{bookman}
% \RequirePackage{times}
% \RequirePackage[default]{opensans} %fosfamily
%\usepackage{antpolt}
% Math fonts
% \RequirePackage{mathpazo} % Palatino
%\usepackage{euler} % for math fints

% Use Bitstream Charter as the main font. Does not include a typewriter font.
\RequirePackage{XCharter} %%%%---- to switch to computer modern font, comment this line, and lines 47-49
% \RequirePackage[xcharter,bigdelims,vvarbb]{newtxmath}
% \RequirePackage{libertine}
% \RequirePackage{libertinust1math}
% \RequirePackage[p]{zlmtt} % for teletype, lmodern's typewriter font


% Use the typewriter font from lmodern, scaled up to match Charter's xheight.
% You may wish to add the "p" option to use the proportional font instead of
% the monospaced one, which might look nicer in cases where you do not need
% aligned columns
\RequirePackage[scaled=1.1]{zlmtt}
% \RequirePackage{libertine}
% \RequirePackage{libertinust1math}

%%======== Margins and column spacing ========
\RequirePackage[left=1.9cm,%
right=1.9cm,%
top=3cm,%
bottom=2.5cm,%
headheight=40pt,%
headsep=20pt,%
%showframe, % for testing
letterpaper]{geometry}%
\setlength{\columnsep}{15pt} % Distance between the two columns of text
%\setlength{\parindent}{0pt}
\setlength{\parskip}{0.5\baselineskip}

%% *Custom font sizes and styles
\newcommand{\watermarkfont}{\color{black50}\normalfont\fontsize{10}{12}\selectfont}
\newcommand{\headerfont}{\color{TinaCrimson}\normalfont\sffamily\fontsize{8}{10}\selectfont}
% \newcommand{\titlefont}{\color{TinaCrimson}\normalfont\bfseries\fontsize{21}{23}\selectfont} %%%%---- title font/color
\newcommand{\titlefont}{\centering\color{TinaCrimson}\normalfont\fontsize{21}{23}\selectfont} %%%%---- title font/color
\newcommand{\datesfont}{\normalfont\sffamily\itshape\fontsize{8}{10}\selectfont}
\newcommand\urlheaderfont{\color{TinaCrimson}\fontsize{8}{10}\selectfont}
\newcommand{\absfont}{\linespread{1.1}\fontsize{10}{12}\color{black}\selectfont}
\newcommand{\keywordstitlefont}{\bfseries\linespread{1.2}\fontsize{8}{10}\selectfont}
\newcommand{\keywordsfont}{\itshape\linespread{1.2}\fontsize{11}{12}\selectfont}
\newcommand{\copyrightfont}{\normalfont\fontsize{7}{9}\selectfont}
\newcommand{\footerfont}{\color{black}\normalfont\fontsize{8}{10}\selectfont}
\newcommand{\subjectfont}{\color{white}\bfseries\fontsize{10}{12}\selectfont}
\newcommand{\headingfont}{\color{TinaCrimson}\bfseries\fontsize{13}{14}\selectfont}

\newcommand{\keywords}[1]{\def\@keywords{#1}}
\newtoks\correspondingauthor
\newtoks\paperurl
\newtoks\reportnumber

% Dates and Times for footer
%\newdateformat{monthyeardate}{\THEDAY{ }\monthname[\THEMONTH] \THEYEAR}
% ISO-8601 date format
\newdateformat{monthyeardate}{\THEYEAR-\THEMONTH-\THEDAY}
\setcounter{secnumdepth}{3}
\ifthenelse{\boolean{nonumbering}}{\setcounter{secnumdepth}{0}}{}

%%========  Author and affiliation ========
\RequirePackage{authblk}
\setcounter{Maxaffil}{0}
\setlength{\affilsep}{0.2em}
\renewcommand\Authfont{\centering\normalfont\bfseries\fontsize{10}{14}\selectfont}
\renewcommand\Affilfont{\centering\normalfont\fontsize{10}{20}\selectfont}
\makeatletter
\renewcommand\AB@affilsepx{, \protect\Affilfont}
\makeatother
\renewcommand\Authands{, and }

\newcommand{\internalonly}{}
\newcommand{\copyrightext}{\footerfont \textcopyright\, \the\year{} }


%%======== Header and Footer Content ========
%
% Header and Footer for the first page
\pagestyle{fancy}   % Enables the custom headers/footers
\fancypagestyle{firststyle}{
	\fancyhead[L]{
		\ifthenelse{\boolean{logo}}{
			\includegraphics[width=90pt]{assets/berkeley_logo}
	 }{}
}
\fancyhead[R]{
	\ifdefined\paperurl
	\if\relax\the\paperurl\relax \else
		\href{\the\paperurl}{\urlheaderfont \itshape \the\paperurl}\\ \fi
	\else \fi
	{}
}
\fancyhead[C]{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{1pt}
%
\fancyfoot[L]{
	\ifdefined\correspondingauthor
	\if\relax\the\correspondingauthor\relax
	\else \footerfont\itshape  {Corresponding author(s): \the\correspondingauthor \\} \fi
	\else \fi
    \ifthenelse{\boolean{internal}}{\footerfont \internalonly \\}{\footerfont\bfseries\relax}
	\ifthenelse{\boolean{address}}{
		\itshape\footerfont UC Berkeley, Berkeley, California \\}{}
	\ifthenelse{\boolean{copyright}}{\copyrightext}{}
}
\fancyfoot[R]{
	\ifthenelse{\boolean{internal}}{
	\ifdefined\reportnumber
	\if\relax\the\reportnumber\relax
	\else \footerfont\itshape  {\footerfont \bfseries \the\reportnumber} \fi
	\else \fi
	}{\footerfont\bfseries\relax}
}
\fancyfoot[C]{\footerfont\bfseries\relax}}



% Header and Footer for pages from 2 onwards
\renewcommand{\footrulewidth}{0pt}
\fancyhead[L,R]{}
\makeatletter
\newcommand\runningtitle[1]{\renewcommand\@runningtitle{#1}}
\newcommand\@runningtitle{}
\fancyhead[C]{\footerfont \@runningtitle} %%%%---- Running title
\makeatother
\fancyfoot[C]{}
\fancyfoot[L]{
	\ifthenelse{\boolean{internal}}{\footerfont \internalonly\newline
		\ifdefined\reportnumber
		\if\relax\the\reportnumber\relax
		\else \footerfont {} \fi
		\else \fi}{\footerfont\bfseries\relax}
}
\fancyfoot[R]{\footerfont \thepage}

% Header and footer rules (coloured).
\renewcommand{\headrulewidth}{1pt}
% \renewcommand{\footrulewidth}{1pt}
\let\DefaultHeadRule\headrule
\let\DefaultFootRule\footrule
\renewcommand{\headrule}{\color{black}\DefaultHeadRule}
\renewcommand{\footrule}{\textcolor{black}{\DefaultFootRule}}

\tcbset{
    titlebox/.style={
        colback=CalGoldHex, % Background color of the box
        colframe=CalGoldHex, % Border color of the box
        boxrule=0.5mm, % Border thickness
        arc=2mm,       % Rounded corners
        auto outer arc,
        left=5mm,      % Left padding
        right=5mm,     % Right padding
        top=5mm,       % Top padding
        bottom=5mm,    % Bottom padding
    }
}

\renewenvironment{abstract}
{\par\noindent\\  \ignorespaces}
{\par\bigskip}


%%========  Bibliography using bibtex ========


\addto{\captionsenglish}{\renewcommand{\refname}{References}}
\newcommand{\citeas}[1]{\Needspace*{8\baselineskip}\noindent\bibentry{#1}}
% Uncomment the next line if you want the  numbered refs to be "1." instead of "[1]".
%\makeatletter \renewcommand\@biblabel[1]{#1.} \makeatother

%%======== Abstract and section formatting ========


\def\xabstract{abstract}
\long\def\abstract#1\end#2{\def\two{#2}\ifx\two\xabstract
	\long\gdef\theabstract{\ignorespaces#1}
	\def\go{\end{abstract}}\else
\typeout{^^J^^J PLEASE DO NOT USE ANY \string\begin\space \string\end^^J
	COMMANDS WITHIN ABSTRACT^^J^^J}#1\end{#2}
\gdef\theabstract{\vskip12pt BADLY FORMED ABSTRACT: PLEASE DO
NOT USE {\tt\string\begin...\string\end} COMMANDS WITHIN
THE ABSTRACT\vskip12pt}\let\go\relax\fi
\go}

% Define an environment with abstract content and styling
\makeatletter
\newcommand{\abscontent}{
	\noindent
	\parbox{\dimexpr\linewidth}{\absfont \theabstract}
	\@ifundefined{@keywords}{}{
		\vskip1em \noindent \keywordsfont  Keywords: \@keywords}
}

\newcommand{\HorRule}{\color{black}\rule{\textwidth}{1pt}} %

\if@twocolumn%
\renewcommand{\maketitle}{
	\twocolumn[
	\begin{adjustwidth}{0pt}{24pt}
		\begin{center}
			{
                    % % \vskip-0.5cm
                    % \HorRule
                    \vskip5pt
				{\raggedright \titlefont
				\@title\par}%
				\vskip11pt
				{\raggedright \@author\par}
				\vskip-5pt%
                    \HorRule
                    \vskip10pt%
			}%
		\end{center}
	\end{adjustwidth}
		\abscontent
	\vskip20pt%
	]
	\thispagestyle{firststyle}
}%
\else% \@twocolumnfalse
\renewcommand{\maketitle}
{
\vphantom{a}
\vspace{-15mm}
\begin{tcolorbox}[titlebox]
\bgroup\setlength{\parindent}{0pt}
	\begin{adjustwidth}{0pt}{24pt}
		\begin{center}
			{
                    \centering
                    % \vskip-100pt
                    % \HorRule
                    \vskip5pt
				{\raggedright \titlefont \@title\par}% %%%%---- title definition
				\vskip11pt
				{\raggedright \@author\par}
                    \vskip15pt%
			}%
		\end{center}
	\end{adjustwidth}
	\egroup
	{%
		{\abscontent}
	}%
	\thispagestyle{firststyle}
 \end{tcolorbox}
}%
\fi
\makeatother

\titleformat{\section}
{\large\bfseries\headingfont}
{\thesection.}
{0.5em}
%{\MakeUppercase{#1}}[]
{#1}
[]

\titleformat{name=\section,numberless}
{\large\bfseries\headingfont}
{}
{0em}
%{\MakeUppercase{#1}}[]
{#1}
[]
\titleformat{\subsection}
{\bfseries}
{\thesubsection.}
{0.5em}
{#1}
[]
\titleformat{\subsubsection}% [runin] If want to have inline for the subsubsect
{\bfseries\itshape}
{\thesubsubsection.}
{0.5em}
{#1}
[]


\titlespacing*{\section}{0pc}{3ex plus4pt minus3pt}{5pt}
%\titlespacing*{\section}{0pc}{1ex }{\baselineskip}
\titlespacing*{\subsection}{0pc}{2.5ex plus3pt minus2pt}{2pt}
\titlespacing*{\subsubsection}{0pc}{2ex plus2.5pt minus1.5pt}{2pt}
%\titlespacing*{\paragraph}{0pc}{2ex plus2pt minus1pt}{0pt}

%%======== Captions in tables and figures ========
\DeclareCaptionLabelSeparator{pipe}{:~}% or $\vert$
\captionsetup{labelfont={}, %{bf,sf},%
labelsep=space,%
figurename=\textbf{Figure},%
labelsep=pipe,
singlelinecheck=off,%
%justification=centering
}

