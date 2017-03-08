.onLoad <- function(libname, pkgname)
{
    baseDir <- system.file(package=pkgname)
    exeDir <- file.path(baseDir, "exec")
    pythonDir <- file.path(baseDir, "simpact","python")
    dataDir <- paste(file.path(baseDir, "simpact","data"), .Platform$file.sep, sep="")

    #print(baseDir)
    print(paste("Using executable directory:", exeDir))
    print(paste("Setting PYTHONPATH to:", pythonDir))
    print(paste("Setting data directory to:", dataDir))

    Sys.setenv(PATH=paste(exeDir, Sys.getenv("PATH"),sep=.Platform$path.sep))
    Sys.setenv(PYTHONPATH=pythonDir)
    Sys.setenv(SIMPACT_DATA_DIR=dataDir)
}

.onUnload <- function( libpath )
{
}

