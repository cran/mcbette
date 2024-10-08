#' Performs a minimal \link{mcbette} run
#' @inheritParams default_params_doc
#' @return Nothing. Will \link{stop} is 'mcbette' cannot run on a minimal,
#' standard input.
#' @export
mcbette_self_test <- function(
  beast2_folder = beastier::get_default_beast2_folder()
) {
  mcbette::est_marg_lik(
    fasta_filename = system.file("extdata", "simple.fas", package = "mcbette"),
    inference_model = beautier::create_test_ns_inference_model(),
    beast2_options = beastier::create_beast2_options(
      beast2_path = beastier::get_default_beast2_bin_path(
        beast2_folder = beast2_folder
      )
    )
  )
  invisible(NULL)
}
