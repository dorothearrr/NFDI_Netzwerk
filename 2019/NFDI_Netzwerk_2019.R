library(circlize)
library(igraph)

# Daten importieren
NFDI_Netzwerk <- read.csv2("NFDI_Netzwerk_2019.csv")

# Visualisierung: chord chart
grid.col <- setNames(rainbow(length(unlist(dimnames(NFDI_Netzwerk)))), union(rownames(NFDI_Netzwerk), colnames(NFDI_Netzwerk)))
chordDiagram(NFDI_Netzwerk, annotationTrack = "grid", preAllocateTracks = 1, grid.col = grid.col)
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
vertex_attr(NFDI_graph)$color <- rep("#9ab6d6", length(V(NFDI_graph)))
set.seed(1)
l <- layout_with_graphopt(NFDI_graph)
plot(NFDI_graph, layout = l, vertex.size = 3*igraph::degree(NFDI_graph, mode = "in"), vertex.label.family = "Helvetica", vertex.label.color= "grey30", vertex.frame.color = "#7b91ab", edge.width = 2, edge.color = "#7b91ab", edge.curved = 0.5)
