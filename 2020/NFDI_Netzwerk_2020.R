library(circlize)
library(igraph)
library(tidyverse)

# Daten importieren
NFDI_Netzwerk <- read_csv2("NFDI_Netzwerk_2020.csv")
Konsortien <- read_csv2("Konsortien_2020.csv")

# Konsortien herausfiltern, die bereits 2019 erfolgreich einen Antrag gestellt haben
NFDI_chord_chart <- left_join(NFDI_Netzwerk, Konsortien, by = c("to" = "name"))
NFDI_chord_chart <- NFDI_chord_chart %>%
  filter(year == "2020")
# Visualisierung: chord chart
grid.col <- setNames(rainbow(length(unlist(dimnames(NFDI_chord_chart)))), union(rownames(NFDI_chord_chart), colnames(NFDI_chord_chart)))
chordDiagram(NFDI_chord_chart, annotationTrack = "grid", preAllocateTracks = 1, grid.col = grid.col)
circos.trackPlotRegion(track.index = 1, panel.fun = function(x, y) {
  xlim = get.cell.meta.data("xlim")
  ylim = get.cell.meta.data("ylim")
  sector.name = get.cell.meta.data("sector.index")
  circos.text(mean(xlim), ylim[1] + 0.2, sector.name, facing = "clockwise", niceFacing = TRUE, adj = c(0, 0.5))
}, bg.border = NA)
circos.clear()


# Netzwerkanalyse
# Graph aus Datensatz erstellen
NFDI_graph <- graph.data.frame(NFDI_Netzwerk, directed = TRUE)
NFDI_graph <- as.undirected(NFDI_graph, mode = "collapse")

# degree
igraph::degree(NFDI_graph, v = V(NFDI_graph))
# betweenness
igraph::betweenness(NFDI_graph, v = V(NFDI_graph), directed = FALSE)

# Visualisierung
# Einfärbung basierend auf dem Jahr der verbindlichen Antragstellung
vertex_attr(NFDI_graph)$color <- rep("#9ab6d6", length(V(NFDI_graph)))
vertex_attr(NFDI_graph, "color", index = 18) <- "#acd69a"
vertex_attr(NFDI_graph, "color", index = 19) <- "#acd69a"
vertex_attr(NFDI_graph, "color", index = 20) <- "#acd69a"
vertex_attr(NFDI_graph, "color", index = 21) <- "#acd69a"
vertex_attr(NFDI_graph, "color", index = 22) <- "#acd69a"
vertex_attr(NFDI_graph, "color", index = 23) <- "#acd69a"
vertex_attr(NFDI_graph, "color", index = 24) <- "#acd69a"
vertex_attr(NFDI_graph, "color", index = 25) <- "#acd69a"
vertex_attr(NFDI_graph, "color", index = 26) <- "#acd69a"


set.seed(1)
l <- layout_with_graphopt(NFDI_graph)
V(NFDI_graph)$label.cex = 0.75
plot(NFDI_graph, layout = l, vertex.size = 1.3*igraph::degree(NFDI_graph, mode = "in"), vertex.label.family = "Helvetica", vertex.label.color= "grey20", vertex.frame.color = "#7b91ab", edge.width = 2, edge.color = "#7b91ab", edge.curved = 0.5)

