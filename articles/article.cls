%<1 vim: set ts=3 sts=3 sw=3 tw=100 fdm=marker foldmarker=%<,%> filetype=tex spell:%
\NeedsTeXFormat{LaTeX2e}% Déclaration du format LaTeX cible Nom et version de la classe
\ProvidesClass{article}[2016/03/05 Validation CAS, V0.0]
\LoadClass[
	titlepage,% Page de titre séparée
	headings=small,% petite écriture pour les titres
	numbers=noenddot,% supprime le point à la fin de la numérotation des titres
	fontsize=12pt,
]{scrartcl}

%<1 Paquets usuels
\RequirePackage[utf8]{inputenc}     % Le document en entrée doit être en utf8
\RequirePackage[T1]{fontenc}        % pour les diacritiques française
\usepackage{lmodern}                % police adaptée au PDF
\RequirePackage{xspace}             % gestion correcte des espaces après les macros
\RequirePackage{lipsum}             % pour avoir du texte d'essais
\RequirePackage{hyperref}           % Gestion des liens hypertex et du PDF
\RequirePackage[frenchb]{babel}           % gestion des langues

%<1 Décoration de page
\RequirePackage{scrlayer-scrpage}
\def\partcourt{NomCourtDePartie}
\def\sectioncourt{NomCourtDeSection}
\renewcommand{\partmark}[1]{\def\partcourt{#1}}
\renewcommand{\sectionmark}[1]{\def\sectioncourt{#1}}

\deftriplepagestyle{pstexte}
	[0.1pt]
	{\thepart -- \thesection}
	{\markright}
	{\thepage}
	{\partcourt}
	{\sectioncourt}
	{six}
\pagestyle{pstexte}
\linespread{1.25}% correspond à un interligne de 1,5

