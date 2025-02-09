\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
\LoadClass[11pt]{article}

% disable indent globally
\setlength{\parindent}{0pt}
% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}
% use xifthen
\RequirePackage{xifthen}
% use hyperlink for email and url
\RequirePackage{hyperref}
\hypersetup{hidelinks}
\RequirePackage{url}
\urlstyle{tt}
% use fontawesome
\RequirePackage{fontawesome}
% use xcolor for customizing color
%\RequirePackage[usenames,dvipsnames]{xcolor}
% loading fonts
\RequirePackage{fontspec}
% Main document font
\setmainfont[
  Path = fonts/Main/ ,
  Extension = .otf ,
  UprightFont = *-regular ,
  BoldFont = *-bold ,
  ItalicFont = *-italic ,
  BoldItalicFont = *-bolditalic ,
  SmallCapsFont = Fontin-SmallCaps
]{texgyretermes}

\RequirePackage[
	a4paper,
	left=0.8in,
	right=0.8in,
	top=0.70in,
	bottom=0.55in,
	nohead
]{geometry}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
%\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.125em, leftmargin=1.5pc, noitemsep, nolistsep}
\setlist[enumerate]{topsep=0.125em, leftmargin=1.5pc, noitemsep, nolistsep}
\RequirePackage[super]{nth}

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\vspace*{-0.18\baselineskip}\titlerule]	% mymod: horizontal line spacing in vertical direction
  % [\titlerule]                 % Inserts a horizontal line after the heading
% \titlespacing*{\section}{0cm}{*1.8}{*1.8}
\titlespacing*{\section}{0cm}{*0.0}{*0.6}		% MYMOD

\titleformat{\subsection}
  {\large\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*0.2}{*0.0}

\newcommand{\firstsection}[1]{
	\section[#1]{#1}
}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill \normalsize\textit{#2}}%  %% mymod
}
\newcommand{\subsectionnoit}[2]{%
  \subsection[#1]{#1 \hfill \normalsize{#2}}%  %% mymod
}

\newcommand{\bdatedsubsection}[2]{%				%% bullet dated xxx
  \subsection[#1]{$\bullet$  #1 \hfill \normalsize\textit{#2}}%  %% mymod
}
\newcommand{\datedline}[2]{%
  {\par\noindent\hspace*{0.5pc} #1 \hfill \textit{#2} \par}%  %% mymod
}

\newcommand{\name}[1]{
  \centerline{\Huge\scshape{#1}}
  % \vspace{1.5ex}
  \vspace{0.5ex}		% mymod
}

% defines one's name
% usage: \name{<name>}
\newcommand{\nameTest}[1]{
  {\large\scshape{#1}}
}

% defines one's email
% usage: \email{<email>}
\newcommand{\email}[1]{\faEnvelopeO\ \href{mailto:#1}{#1}}
% defines one's phone
% usage: \phone{<phone>}
\newcommand{\phone}[1]{\faPhone\ {#1}}
\newcommand{\address}[1]{\faHome\ {#1}}
% defines one's linkedin
% usage: \linkedin{<linkedin>}
\newcommand{\linkedin}[2][]{\faLinkedin\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}
\newcommand{\linkedinsquare}[2][]{\faLinkedinSquare\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}
% defines one's GitHub
% usage: \github{<github>}
\newcommand{\github}[2][]{\faGithub\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}
% defines one's homepage
% usage: \homepage{<homepage>}
\newcommand{\homepage}[2][]{\faLink\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}

\newcommand{\basicInfo}[1]{
  \centerline{\sffamily\small{#1}}
  %% \vspace{1.5ex}
  %% mymod:
  % \vspace{0.5ex}
}

\newcommand{\role}[3]{
 	{\noindent\hspace*{0.5pc} #1 ~ #2 \hfill \textit{#3}}	% mymod
  % {\textit{#1} \hfill \textit{#2} }	% mymod
  % {\par \textit{#1} ~ #2 \par}	% mymod
  % \vspace{0.25ex}
}
