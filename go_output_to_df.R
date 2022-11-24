#' A munging function to turn Gene Ontology outputs into data frame
#'
#' @param go.out the output from running enrichGO() or run_gene_ontology()
#' @export
#' @examples
#' go_output_to_df()

go_output_to_df <- function(go.out){
  go.df <- data.frame(go.out)
  go.df <- go.df[with(go.df, order(p.adjust))]
#   tmp <- do.call(rbind, stringr::str_split(go.df$GeneRatio, "/"))
#   go.df$gene
  go.df$Description <- factor(go.df$Description, levels = go.df$Description)
  go.df$Ontology <- go.df$Ontology
}
