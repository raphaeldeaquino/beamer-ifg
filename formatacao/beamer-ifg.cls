%% -----------------------------------------------------------------
%%
%% Slides LaTeX para apresentações
%% Instituto Federal de Goiás
%% Autor: Raphael Gomes (raphael.gomes@ifg.edu.br)
%%

%%==================================================================
%% beamer-ifg Class Identification
%%==================================================================
\newcommand{\docdate}{}  % See the renewcommands below,
\newcommand{\filedate}{} % these contain the content;-))
\newcommand{\fileversion}{}
\renewcommand{\docdate}{2020/11/08}
\renewcommand{\filedate}{2020/11/08}
\renewcommand{\fileversion}{1.0}
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{formatacao/beamer-ifg}%
[\filedate\space v\fileversion\space CLASSE-IFG Thesis Class]
\typeout{LaTeX 2e package classe-ifg' -- Released 14 nov 2020}

%%==================================================================
%% Histórico de versões
%%==================================================================
% v1.0 : 15 nov 2023 ---------------------------------------------------------------------------
% - Primeira versão da beamer-ifg

%%==================================================================
%% classe-ifg Class Options
%%==================================================================
\RequirePackage{ifthen}
\PassOptionsToPackage{hyphens}{url}

\newboolean{tese} \setboolean{tese}{false}
\newboolean{diss} \setboolean{diss}{true}
\newboolean{qualm} \setboolean{qualm}{false}
\newboolean{quale} \setboolean{quale}{false}
\newboolean{mngr} \setboolean{mngr}{false}
\newboolean{tcc} \setboolean{tcc}{false}
\newboolean{qualt} \setboolean{qualt}{false}
\newboolean{prem} \setboolean{prem}{false}
\newboolean{pree} \setboolean{pree}{false}
\newboolean{pret} \setboolean{pret}{false}
\newboolean{relat} \setboolean{relat}{false}
\newboolean{old} \setboolean{old}{false}
\newboolean{fancylayout} \setboolean{fancylayout}{true} 

\DeclareOption{tese}{
 \setboolean{tese}{true}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{dissertacao}{
 \setboolean{tese}{false}
 \setboolean{diss}{true}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{qualificacaom}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{true}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{monografia}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{true}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{qualificacaoe}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{true}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{tcc}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{true}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{qualificacaot}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{true}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{preprojetom}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{true}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
 \setboolean{fancylayout}{false}
 \setboolean{old}{true}
}

\DeclareOption{preprojetoe}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{true}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
 \setboolean{fancylayout}{false}
 \setboolean{old}{true}
}

\DeclareOption{preprojetot}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{true}
 \setboolean{relat}{false}
 \setboolean{fancylayout}{false}
 \setboolean{old}{true}
}

\DeclareOption{relatorio}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{true}
 \setboolean{fancylayout}{false}
 \setboolean{old}{true}
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\DeclareOption{american,english,french,german,brazil,portuguese}{
 \PassOptionsToPackage{\CurrentOption}{babel,fancyref}}
 \ProcessOptions\relax
\LoadClass[compress]{beamer}
\usetheme{Warsaw}
\usecolortheme{orchid}
\usefonttheme{professionalfonts}
\definecolor{ifgColor}{rgb}{0.1953, 0.625, 0.2539}
\definecolor{UBCgrey}{rgb}{0, 0, 0} % UBC Grey (secondary)
\setbeamercolor{palette primary}{bg=ifgColor,fg=white}
\setbeamercolor{palette secondary}{bg=ifgColor,fg=white}
\setbeamercolor{palette tertiary}{bg=ifgColor,fg=white}
\setbeamercolor{palette quaternary}{bg=ifgColor,fg=white}
\setbeamercolor{structure}{fg=ifgColor} % itemize, enumerate, etc
\setbeamercolor{section in toc}{fg=ifgColor} % TOC sections
% Override palette coloring with secondary
\setbeamercolor{subsection in head/foot}{bg=UBCgrey,fg=white}
\pgfdeclareimage[height=1.0cm]{logoIFG}{formatacao/logoifg}
\logo{\pgfuseimage{logoIFG}}
\expandafter\def\expandafter\insertshorttitle\expandafter{%
  \insertshorttitle\hfill%
  \insertframenumber\,/\,\inserttotalframenumber}
\makeatletter
\renewcommand{\itemize}[1][]{%
  \beamer@ifempty{#1}{}{\def\beamer@defaultospec{#1}}%
  \ifnum \@itemdepth >2\relax\@toodeep\else
    \advance\@itemdepth\@ne
    \beamer@computepref\@itemdepth% sets \beameritemnestingprefix
    \usebeamerfont{itemize/enumerate \beameritemnestingprefix body}%
    \usebeamercolor[fg]{itemize/enumerate \beameritemnestingprefix body}%
    \usebeamertemplate{itemize/enumerate \beameritemnestingprefix body begin}%
    \list
      {\usebeamertemplate{itemize \beameritemnestingprefix item}}
      {%
        \setlength\topsep{1pt}%NEW
        \setlength\partopsep{0pt}%NEW
        \setlength\itemsep{0pt}%NEW
        \def\makelabel##1{%
          {%
            \hss\llap{{%
                \usebeamerfont*{itemize \beameritemnestingprefix item}%
                \usebeamercolor[fg]{itemize \beameritemnestingprefix item}##1}}%
          }%
        }%
      }
  \fi%
  \beamer@cramped%
  \raggedright%
  \beamer@firstlineitemizeunskip%
}
\makeatother

\newcommand\Wider[2][3em]{%
\makebox[\linewidth][c]{%
  \begin{minipage}{\dimexpr\textwidth+#1\relax}
  \raggedright#2
  \end{minipage}%
  }%
}

\newcommand{\semitransp}[2][35]{\textcolor{fg!#1}#2}

\AtBeginSection{\frame{\sectionpage}}

\setbeamertemplate{section page}
{
    \begin{centering}
    \begin{beamercolorbox}[sep=12pt,center]{part title}
    \usebeamerfont{section title}\insertsection\par
    \end{beamercolorbox}
    \end{centering}
    \addtocounter{page}{-1}
}

\newcommand{\backupbegin}{
   \newcounter{finalframe}
   \setcounter{finalframe}{\value{framenumber}}
}
\newcommand{\backupend}{
   \setcounter{framenumber}{\value{finalframe}}
}

\def\titulo#1{\def\ctitulo{#1}}                 \titulo{}
\def\subtitulo#1{\def\csubtitulo{#1}}           \subtitulo{}
\def\autor#1{\def\cautor{#1}}                   \autor{}
\def\autorresumido#1{\def\cautorresumido{#1}}                   \autorresumido{}
\def\sautor#1{\def\@sautor{#1}}                   \sautor{}
\def\tautor#1{\def\@tautor{#1}}                   \tautor{}
\def\orientador#1{\def\corientador{#1}}         \orientador{}
\def\orientadora#1{\def\corientadora{#1}}       \orientadora{}
\def\coorientador#1{\def\ccoorientador{#1}}     \coorientador{}
\def\coorientadora#1{\def\ccoorientadora{#1}}   \coorientadora{}
\def\chaves#1{\def\@chaves{#1}}                 \chaves{}
\def\keys#1{\def\@keys{#1}}                     \keys{}
\def\dia#1{\def\cdia{#1}}                       \dia{}
\def\mes#1{\def\cmes{#1}}                       \mes{\month}
\def\cmesP{
  \ifcase\cmes\or
    Janeiro\or Fevereiro\or Mar\c{c}o\or 
    Abril\or Maio\or Junho\or 
    Julho\or Agosto\or Setembro\or 
    Outubro\or Novembro\or Dezembro\fi}
\def\ano#1{\def\cano{#1}}                       \ano{}
\def\instituicao#1{\def\@instituicao{#1}}       \instituicao{}
\def\reitoria#1{\def\@reitoria{#1}}             \reitoria{}
\def\unidade#1{\def\@unidade{#1}}               \unidade{}
\def\unidadeco#1{\def\@unidadeco{#1}}           \unidadeco{}
\def\campus#1{\def\@campus{#1}}                 \campus{}
\def\tipocurso#1{\def\@tipocurso{#1}}           \tipocurso{}
\def\curso#1{\def\@curso{#1}}                   \curso{}
\def\disciplina#1{\def\@disciplina{#1}}                   \disciplina{}
\def\programa#1{\def\@programa{#1}}             \programa{}
\def\linha#1{\def\@linha{#1}}                   \linha{}
\def\concentracao#1{\def\@concentracao{#1}}     \concentracao{}
\def\lattes#1{\def\@lattes{#1}}                 \lattes{}

%% Capa
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\capa}{
\ifthenelse{\boolean{qualm}}{
\title[Qualificação de Mestrado]{\ctitulo}
}{
\title{\ctitulo}
}

\ifthenelse{\equal{\csubtitulo}{}}
{
}{
	\subtitle{\csubtitulo}
}

\author[\cautorresumido]{\cautor}

% Orientadora
\ifthenelse{\equal{\corientador}{}}
{
	% Coorientador vazio
	\ifthenelse{\equal{\ccoorientador}{}}
	{
		% Coorientadora vazio
		\ifthenelse{\equal{\ccoorientadora}{}}
		{
			\institute{Orientadora: Profa. \corientadora}
		% Coorientadora não vazio
		}{
			\institute{Orientadora: Profa. \corientadora \\ Coorientadora: Profa. \ccoorientador}
		}
	% Coorientador não vazio
	}{
		\institute{Orientadora: Profa. \corientadora \\ Coorientador: Prof. \ccoorientador}
	}
% Orientador
}{
	% Coorientador vazio
	\ifthenelse{\equal{\ccoorientador}{}}
	{
		% Coorientadora vazio
		\ifthenelse{\equal{\ccoorientadora}{}}
		{
			\institute{Orientador: Prof. \corientador}
		% Coorientadora não vazio
		}{
			\institute{Orientador: Prof. \corientador \\ Coorientadora: Profa. \ccoorientador}
		}
	% Coorientador não vazio
	}{
		\institute{Orientador: Prof. \corientador \\ Coorientador: Prof. \ccoorientador}
	}
}

\date{\cdia~de\cmesP~de~\cano}

\ifthenelse{\boolean{diss} \OR \boolean{qualm}}{
	\titlegraphic{
		\includegraphics[width=0.20\textwidth]{formatacao/logoMTGS}
		\hspace{1.0cm}
		\includegraphics[width=0.40\textwidth]{formatacao/logoifgc}
	}
}{
	\titlegraphic{
		\includegraphics[width=0.40\textwidth]{formatacao/logoifgc}
	}
}

\begin{frame}[plain]
\titlepage
\end{frame}
}

%% Sumário
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\sumario}{
	\begin{frame}
		\tableofcontents
	\end{frame}
}

%% Tabelas
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\renewcommand{\tablename}{Tabela}
\RequirePackage{makecell}
\RequirePackage{multirow}
\RequirePackage{longtable}
\renewcommand\theadalign{cb}
\renewcommand\theadfont{\scriptsize}
\renewcommand\theadgape{\Gape[0.5pt]}
\renewcommand\cellgape{\Gape[0.5pt]}
\newcolumntype{M}[1]{>{\arraybackslash}m{#1}}
\newcolumntype{Z}[1]{>{\centering\arraybackslash}m{#1}}
\newcolumntype{N}{@{}m{0pt}@{}}
\newcommand{\fontetab}[1]{
	\centering
    \footnotesize
    Fonte: #1.
}

% Figuras
% - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - -
\newcommand{\fontefig}[1]{
	\centering
    \footnotesize
    Fonte: #1.
}

%% Bibliografia
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\bibliografia}{%
\begin{frame} % Use [allowframebreaks] to allow automatic splitting across slides if the content is too long
	\frametitle{Referências}
	
	\bibliography{bib/bibliografia.bib}
\end{frame}
}

    
%% Local Variables:
%% mode: LaTeX
%% End:
\endinput
%%==================================================================
%% End of file beamer-ifg.cls'.
%%==================================================================