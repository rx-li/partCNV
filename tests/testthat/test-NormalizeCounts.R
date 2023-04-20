test_that("NormalizeCounts", {
  data(SimData)
  sce <- SingleCellExperiment(SimData)
  counts <- NormalizeCounts(sce)
  
  expect_type(counts, "S4")
})
