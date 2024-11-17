Diese Datei bezieht sich auf alle Dateien, aus denen die
HSR-Formelsammlung kompiliert werden kann, inklusive dem
Titelbild.

Lizenzbedingungen
-----------------
Diese Formelsammlung steht unter der GNU 2 Lizenz

Für Fehlermeldungen und Anregungen
----------------------------------
Verantwortliche für die Themengebiete:

Thomas Küng
 tkueng@hsr.ch
 - Elektrizitätslehre
 - Formatierungen

Urs Winiger
 uwiniger@hsr.ch
 - Mathematik

Adrian Freihofer
 afreihof@hsr.ch
 - Physik
 - Energie und Antriebstechnik
 - Elektronik
 - Digitale Signalverarbeitung
 - Titelbild 
 - Elektrizitätslehre
 - Mathematik
 - Formatierungen
 
Thanks to
---------
Björn Denzler für diverse Korrektur- und Erweiterungsvorschläge

Kompilieren der Formelsammlung
------------------------------

Zum erstellen der Formelsammlung steht ein make-File bereit, mit
dessen Hilfe diverse Formate in verschiedenen Layoutanordnungen
einfach erzeugt werden können. Folgende Optionen stehen zur Ver-
fügung:

- DVI eine Seite pro Blatt:                      make
- PS eine Seite pro Blatt:                       make ps
- PDF eine Seite pro Blatt:                      make pdf
- DVI 2 Seiten pro Blatt:                        make dvi_2on1
- PS 2 Seiten pro Blatt:                         make ps_2on1
- PDF 2 Seiten pro Blatt:                        make pdf_2on1
- DVI in Buch-Reihenfolge:                       make bookdvi
- PS in Buch-Reihenfolge:                        make bookps
- PDF in Buch-Reihenfolge:                       make bookpdf
- PS in Buch-Reihenfolge 2 Seiten pro Blatt:     make bookps_2on1
- PDF in Buch-Reihenfolge 2 Seiten pro Blatt:    make bookpdf_2on1

- Aufräumen, nur Sourcecode lassen               make clean
- Einige statistische Informationen              make statistic
- tar.bz2 Archiv erstellen                       make bz2
- tar.gz Archiv erstellen                        make gz
- tar Archiv erstellen                           make tar
- Ordner als Backup kopieren                     make backup
- Optionen anzeigen                              make help


Verwendete Software
-------------------

-------------------------------------------------------------------------
|Programm                   | Zweck                        | Version     |
-------------------------------------------------------------------------|
| LaTeX2e                   | Compiler                     | 2e          |
| XFig                      | Grafiken                     | 3.2         |
| octave                    | Plots                        | 2.0.16      |
| Kile                      | LaTeX-Editor                 | 1.1         |
| XEmacs                    | LaTeX-Editor                 | 21.4        |
| Mathematica               | 3D-Plots                     | 4.1 Student |
| Gimp                      | eps-Grafiken bearbeiten      | 1.2.1       |
|                           | Titelbild                    |             |
| KViewShell                | DVI-Viewer                   | 0.2         |
| KGhostView                | ps-Viewer                    | 0.13.1      |
| Acrobat Reader            | pdf-Viewer                   | 5.05        |
| make                      | GNU Make                     | 3.79.1      |
| SuSE Linux                | Betriebssystem               | 7.1 bis 8.1 |
-------------------------------------------------------------------------

Unsere Professoren
------------------

Mathematik                    Christian Glaus
Physik                        Johannes Dürst
Energie und Antriebstechnik   Heiner Prechtel
Elektronik                    Werner Hinn
Elektrizitätslehre            Alex Schüeli
Digitale Signalverarbeitung   Guido Schuster




22.08.2002 Adrian Freihofer
Letzte Änderung: 16.03.2003
