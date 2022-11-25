
library(goplot)

genes <- goplot::genes

go.out <- run_gene_ontology(genes)

go.df <- go_output_to_df(go.out)

p <- plot_go_barchart(go.df)
p
