\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{estilo}
\LoadClass[10pt]{article}
\usepackage{graphicx}
\usepackage{subcaption}
\RequirePackage{hyperref}
\RequirePackage{verbatim}
\RequirePackage{attachfile2}
\RequirePackage{etoolbox}
\RequirePackage{xparse}
\RequirePackage{pgffor}
\RequirePackage{arrayjobx}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage[document]{ragged2e}
\RequirePackage{lipsum}
\RequirePackage{translations}
\RequirePackage{ifthen}
\RequirePackage{xstring}
\RequirePackage[a4paper, left=30mm, right=30mm, top=30mm, bottom=30mm, marginpar=25mm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{csquotes}

\AtBeginDocument{%
  \setlength{\parskip}{0.9em}%
  \setlength{\parindent}{0pt}%
}

\RequirePackage{tikz}
\RequirePackage{xfp}
\RequirePackage{emoji}

% Función para poner los asteriscos (ya no se usa)
\newcommand{\andreas}[5][1.0]{
    \begin{scope}[shift={(#2,#3)},rotate=45,scale=#4,transparency group,opacity=#1]
        \fill[fill=#5] (0,0) -- (0,1) -- (3,1) -- (3,0);
        \fill[fill=#5] (1,-1) -- (2,-1) -- (2,2) -- (1,2);
    \end{scope}
}

% Comando que generaba la línea de cruces (ya no se usa)
\newcommand{\andreasline}{
    \centering\begin{tikzpicture}
        \newcommand\numcross{29}
        \foreach \n in {1,...,\the\numexpr\numcross\relax} {
            \andreas[\fpeval{0.9*sin((\n + 1)*pi/(\numcross+2))}]{0.5*\n}{0}{0.10}{black}
        }
    \end{tikzpicture}
}

\newcommand{\andreaslineslim}{
    \centering\begin{tikzpicture}[baseline]
        \newcommand\numcross{74}
        \foreach \n in {1,...,\the\numexpr\numcross\relax} {
            \andreas[0.75]{0.2*\n}{0}{0.04}{black}
        }
    \end{tikzpicture}
}

%------------------------------------------------------------------------------
%	Función para contar palabras
%------------------------------------------------------------------------------
\newcommand{\quickwordcount}[1]{%
  \immediate\write18{texcount -total -sum -1 -merge #1.tex > #1-words}%
  \input{#1-words} palabras%
}

%------------------------------------------------------------------------------
%	HEADERS, FOOTERS EN SECCIONES
%------------------------------------------------------------------------------
\pagestyle{fancy}
\setlength{\headheight}{27pt}

\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}
\rhead{\footnotesize \textsc {Trabajo practico 1: Fisica para informaticos. \\ 1er Cuatrimestre 2026}} % Trabajo práctico
\lhead{\includegraphics[width=2.5cm]{logo}}
\cfoot{\small \textsc {Página \thepage\ de \pageref*{LastPage}}}

\fancypagestyle{firststyle}
 {
  \fancyhf{}
   \renewcommand{\headrulewidth}{0pt}
   %\lfoot{\textit {\quickwordcount{main}}} 
   %\rfoot{\small \textsc {Página \thepage\ de \pageref*{LastPage}}}
 }

%------------------------------------------------------------------------------
%	CARÁTULA MODIFICADA
%------------------------------------------------------------------------------

\renewcommand*{\maketitle}{
\thispagestyle{firststyle}
\begin{center}
\includegraphics[width=7cm]{logo}
\\[1cm]
% \textsc{\Large Aprendizaje Profundo}\\
% \textsc{\small (75.73/TB054) Curso LEW SERGIO EDUARDO, VEIGA RICARDO ALFREDO, MININNI CAMILO}\\[0.4cm]
{\huge \bfseries Informe de Práctica de Laboratorio 1}\\[0.4cm]
{\huge \bfseries Péndulo y Cálculo de Densidad}\\[0.4cm]
\rule{\textwidth}{0.4pt} \\[0.2cm]  % Línea horizontal en lugar de cruces
% {\large 25 de febrero de 2026 \\[0.4cm]} % Fecha fija
{\large Integrantes: Melina Belén Jáuregui, Juan Muńoz, Rafael Ortegano, Tomás Fabrizio Orsi\\[0.4cm]} % integrantes
{\large 22 de abril de 2025\\[0.4cm]} % integrantes

\end{center}
}
