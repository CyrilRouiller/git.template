%<1 vim: set ts=3 sts=3 sw=3 tw=100 fdm=marker foldmarker=%<,%> filetype=tex spell:%
\NeedsTeXFormat{LaTeX2e}% Déclaration du format LaTeX cible Nom et version de la classe
\ProvidesClass{article}[2016/03/05 Validation CAS, V0.0]
\LoadClass[
	titlepage,% Page de titre séparée
	headings=small,% petite écriture pour les titres
	cleardoublepage=empty,% pas de numéro de page pour les pages blanches
	numbers=noenddot,% supprime le point à la fin de la numérotation des titres
]{scrartcl}

%<1 Paquets usuels
\RequirePackage[utf8]{inputenc}     % Le document en entrée doit être en utf8
\RequirePackage[T1]{fontenc}        % pour les diacritiques française
\RequirePackage{xspace}             % gestion correcte des espaces après les macros
\RequirePackage{lipsum}             % pour avoir du texte d'essais
\RequirePackage{hyperref}           % Gestion des liens hypertex et du PDF
\RequirePackage[frenchb]{babel}           % gestion des langues

%<1 Décoration de page
\RequirePackage[automark]{scrlayer-scrpage}
\deftriplepagestyle{pstexte}
	[0.1pt]
	{un}
	{deux}
	{\thepage}
	{quatre}
	{cinq}
	{six}
\pagestyle{pstexte}

