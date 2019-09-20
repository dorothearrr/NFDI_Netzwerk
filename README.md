# NFDI_Netzwerk
Daten und Skript für die Analyse von Kollaborationen zwischen potentiellen NFDI-Konsortien (Antragstellung 2019).

# Beschreibung des Datensatzes
Die Netzwerkdaten stammen aus den Letters of Intent, die als verbindliche Voranmeldung für eine Antragstellung 2019 bei der DFG eingereicht wurden:
https://www.dfg.de/foerderung/programme/nfdi/absichtserklaerungen/index.html
Die Angaben wurden Abschnitt 3 entnommen ("Interfaces to other proposed NFDI consortia: brief description of existing agreements for collaboration and/or plans for future collaboration").

Insgesamt reichten 24 Konsortien einen Letter of Intent ein. Ein Konsortium (RWD-DHCt)nannte keine Kollaborationspartner und wurde von anderen Konsortien nicht erwähnt. PAHN-PaN benannte keine Kollaborationspartner explizit.

Der Datensatz umfasst zwei Spalten:
- from: Name des Konsortiums, das (mögliche) Kollaborationspartner nennt
- to: Name des Konsoriums, das als (möglicher) Kollaborationspartner benannt wird

# verwendete Software
- Gu, Z. (2014) circlize https://cran.r-project.org/package=circlize
- Csardi, G.; Nepusz, T. (2006) igraph https://cran.r-project.org/package=igraph
