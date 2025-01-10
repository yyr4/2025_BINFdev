# Background
Please review the README.md and main.nf to understand the orchestration of the pipeline. Any technical questions can be addressed to Samantha Chill at the email provided in your application notification.

The workflow was generated with nf-core 2.14.1 and Nextflow version 24.04.2.

# Preparation
1. Create a fork of the repository: https://github.com/slsevilla/2025_BINFdev. All work must be completed in your personal fork. It should not be published or pushed to the main repository.

# Bash Exercise
1. We would like to deploy the pipeline using the script `run.sh`. This script is not functioning as expected. Create a GitHub issue in your personal repository to address the issue.
2. Update the `run.sh` script to correct the issue. 
3. Push all changes to your personal repository.

# Nextflow Exercise
1. We would like to change the resource allocation of the `fastqc` module to have the following, pre-defined resources:
        cpus   = { check_max( 6     * task.attempt, 'cpus'    ) }
        memory = { check_max( 36.GB * task.attempt, 'memory'  ) }
        time   = { check_max( 8.h   * task.attempt, 'time'    ) }
2. Update the appropriate file(s) to change the resource allocation. 
3. Push all changes to your personal repository.

# Computational Exercise
1. We would like to visualize the data in the `data` repository. 
2. Set the default parameter for `projectID` to be "testProject" instead of "null" in the Nextflow pipeline.
3. Update the R script `createHeatmap.R` to create appropriate visualizations. This will be ran in the pre-defined module `CREATEHEATMAPS`. Some guidelines:

    - You are only required to use the libraries listed in the script. No additional libraries are needed.

    - Create a basic heatmap. Genes should be listed as rows, samples as columns. Use a `Euclidean` distance for rows and columns and `ward.D` for the clustering method. Label appropriately. The output should be labeled `basic_heatmap_{projectID}.pdf`.

    - Create a complex heatmap using the libraries listed in the script, building off of the basic heatmap. Include the annotation col set to the input annotation data. The annotation colors are defined in the script. Row and column names of annotations should be hidden. Set the legend to break the scale into three bins: low, medium, high. Label appropriately. The output should be labeled `complex_heatmap_{projectID}.pdf`.

4. Push all changes to your personal repository. 
