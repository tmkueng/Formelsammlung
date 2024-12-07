# Formelsammlung

## Vorwort

Die vorliegende Formelsammlung wurde während unserem Studium für Elektrotechnik (2000 --- 2003) an der Fachhochschule in Rapperswil mit LaTeX erstelltgeschrieben. Ziel war es, den Inhalt an den Prüffungsstoff anzupassen, aber auch ein Werk zu schreiben, das wir später im Berufsleben verwenden können. Obwohl wir den Inhalt sorgfälltig zusammengestellt haben, sind Fehler nicht ausschliessbar. Als wir von einer Studentin im Jahr 2024 darauf angesprochen wurden, haben wir uns dazu entschlossen diese Formelsammlung als GitHub Repository unter Einhaltung der GNU Public Licence zur allgemeinen Verfügung zu stellen. Wir sind natürlich sehr stolz, dass die Formelsammlung nach über 20 Jahren immer noch sehr gefragt ist und hoffen auf viele neue Inhalte welche durch die Gemeinschaft kreiert werden. 

## Kompilieren

Zum kompilieren muss LaTeX installiert sein, wir empfehlen die TeX Live https://www.tug.org/texlive/ oder die MikTeX https://miktex.org/ distribution.

1. `latex Formelsammlung.tex`
2. `makeindex Formelsammlung.idx`
3. `latex Formelsammlung.tex`
4. `dvipdfm Formelammlung.dvi`

### Buch erstellen
5. `dvibook -i Formelsammlung.dvi -o Formelsammlung_book.dvi`
6. `dvipdfm Formelammlung_book.dvi`