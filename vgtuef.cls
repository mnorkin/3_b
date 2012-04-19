% VGTU EF class
%
% Maksim Norkin, 2012

\ProvidesClass{vgtuef}


\LoadClass[12pt,a4paper,twoside]{article}

%\RequirePackage{times}
\RequirePackage{graphicx}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[L7x]{fontenc}
\RequirePackage[lithuanian]{babel}
\RequirePackage{fancyhdr}
\RequirePackage{layout}
\RequirePackage{setspace}
\RequirePackage{color}
\RequirePackage{setspace}
%\RequirePackage{txfonts}
\usepackage[sc]{mathpazo}

\onehalfspacing

\pagestyle{fancy}

\fancypagestyle{plain}{}

\fancyhead{} % clear all the headers
\renewcommand{\headrulewidth}{0pt} % and lines
%\fancyhead[LE]{LEFT EVEN} % 
%\fancyhead{} % Clear all the headers
%\fancyhead[CO]{\includegraphics[width=483pt]{img/CE_HEADER}} % 
\fancyhead[L]{\includegraphics[height=10pt]{img/CO_HEADER}} % 
%\fancyhead[R]{TT}
%\fancyhead[RO,LE]{RIGHT ODD}
%\fancyhead[LE]{LEFT EVEN}
\fancyfoot{} % Clear all the footer stuff
\fancyfoot[C]{\thepage}

%% \setlength{\hoffset}{-1in}
%% \setlength{\voffset}{-46pt}
\setlength{\hoffset}{-46pt}
\setlength{\voffset}{-1in}
\setlength{\textwidth}{483pt}
%% \setlength{\marginparwidth}{0pt}
%% \setlength{\oddsidemargin}{28pt}
\setlength{\marginparwidth}{28pt}
\setlength{\oddsidemargin}{0pt}
%% \setlength{\evensidemargin}{42pt}
%% \setlength{\marginparsep}{0pt}
\setlength{\evensidemargin}{0pt}
\setlength{\marginparsep}{42pt}
\setlength{\topmargin}{0pt}
\setlength{\textheight}{715pt}
\setlength{\footskip}{20pt}
%\setlength{\headheight}{}

% COLORS
\definecolor{b1}{cmyk}{0.68,0.15,0.0, 0.59}

% Table of contents
\renewcommand\tableofcontents{%
  \section*{
    \centering
      {\color{b1}{\MakeUppercase{\textbf \contentsname}}}
    \@mkboth{%
      \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
  \@starttoc{toc}%
}
