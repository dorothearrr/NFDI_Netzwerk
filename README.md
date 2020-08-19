# NFDI_Netzwerk
Daten und Skripte für die Analysen der Kollaborationen zwischen potentiellen NFDI-Konsortien, die 2019 beziehungsweise 2020 einen Letter of Intent für die verbindliche Antragstellung eingereicht haben.

# Beschreibung der Datensätze
Die Netzwerkdaten stammen aus den Letters of Intent, die als verbindliche Voranmeldung für eine Antragstellung 2019 beziehungsweise 2020 bei der DFG eingereicht wurden.
Die Angaben wurden jeweils Abschnitt 3 entnommen ("Interfaces to other proposed NFDI consortia: brief description of existing agreements for collaboration and/or plans for future collaboration").

* 2019: https://www.dfg.de/foerderung/programme/nfdi/absichtserklaerungen_2019/index.html
* 2020: https://www.dfg.de/foerderung/programme/nfdi/absichtserklaerungen_2020/index.html

## Netzwerkdaten 2019
2019 reichten insgesamt 24 Konsortien einen Letter of Intent ein. Ein Konsortium (RWD-DHCt) nannte keine Kollaborationspartner und wurde von anderen Konsortien nicht erwähnt. PAHN-PaN benannte keine Kollaborationspartner explizit.

Die Netzwerkdaten liegen in einer Datei vor.
"NFDI_Netzwerk_2019.csv" umfasst zwei Spalten:
* from: Name des Konsortiums, das (mögliche) Kollaborationspartner nennt
* to: Name des Konsoriums, das als (möglicher) Kollaborationspartner benannt wird

## Netzwerkdaten 2020
2020 reichten 17 Konsortien einen Letter of Intent ein. Ein Konsortium (ColDiRPS) nannte keine Kollaborationspartner und wurde von anderen Konsortien nicht erwähnt.

Die Netzwerkdaten liegen in zwei Dateien vor.
"NFDI_Netzwerk_2020.csv" umfasst zwei Spalten:
* from: Name des Konsortiums, das (mögliche) Kollaborationspartner nennt
* to: Name des Konsoriums, das als (möglicher) Kollaborationspartner benannt wird
"Konsortien_2020.csv" umfasst zwei Spalten:
* name: Name des Konsortiums
* year: Jahr der verbindlichen Antragstellung

# verwendete Software
- Gu, Z. (2014) circlize https://cran.r-project.org/package=circlize
- Csardi, G.; Nepusz, T. (2006) igraph https://cran.r-project.org/package=igraph
