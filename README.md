<img src="https://raw.githubusercontent.com/RafaelSdeSouza/ADA8/master/images/COIN.png" width="800" align="right">

# Brief Tutorial on Information Visualization #
## IAG-USP - São Paulo, Brazil ##

AGA 0513 

This repository holds  the scripts used to illustrate some visualiuzation methods in R

If you use any of the resources presented here, please include the appropriate citation. 

### Getting Started ###

The tutorial is composed of theoretical and practical modules. 

The examples are  demonstrated in R but _familiarity with the language is not a requirement_.

In order to optimize the time spent in the examples and practical applications, 
I advise the participants to get the following software up and running in advance.

* R     	-	[https://www.r-project.org](https://www.r-project.org)
* Rstudio 	-	[https://www.rstudio.com](https://www.rstudio.com)


**For Linux users**

If you are using Linux, make sure to add the appropriate repository before installing.  

Open the file ``/etc/apt/sources.list`` with your favorite text editor and add the following line:

    deb http://cran.cnr.berkeley.edu/bin/linux/ubuntu trusty/

For deeper instructions and other Linux flavours see [this page](https://cran.r-project.org/bin/linux/ubuntu/README).

Then, in the command line do:

    sudo apt-get update

Do not worry if you got a couple of error messages. This is not significant for our purpouses. The other steps should work as planned despite of them.  

To install R go to the command line and type:

    sudo apt-get install r-base

In order to get Rstudio choose the appropriate version from [this page](https://www.rstudio.com/products/rstudio/download/).

After download is completed double click in the ``.deb`` file. This will automatically open Ubuntu Software Center. Click on Install.    

**R packages**

Once Rstudio is installed you will need a few R packages. 

These can be done in 2 ways:

* Using Rstudio toolbar:

    -Tools -> Install packages

    A window will pop-up where you can select:

    Choose from:  

        Repository (CRAN)

    Packages (separate multiple with space or comma):

        ggplot2, reshape2, circlize, ggdendro, PerformanceAnalytics, ggthemes,
        RColorBrewer,psych

* Alternatively, you can simply type in the Rstudio console window

    
      pac <-c("ggplot2","reshape2","circlize","ggdendro","ggthemes",
      "RColorBrewer","reshape2",
      "PerformanceAnalytics","psych");

      install.packages(pac,dependencies=T)
    
## License
<p><a href="http://www.gnu.org/licenses/gpl-3.0.html" target="_blank"><img src="https://www.gnu.org/graphics/gplv3-127x51.png"></a></p>
Licensed under the <a href="http://www.gnu.org/licenses/gpl-3.0.html" target="_blank">GPLv3</a>.
