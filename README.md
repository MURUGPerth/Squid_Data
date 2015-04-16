# Southern Calamari 
##(<i>Sepioteuthis australis<i/>) 

This dataset is from a research project at Murdoch Univeristy, carried out by Peter Coulson and Jake Chandler, in conjuction with the [Department of Fisheries of Western Australia.](http://www.fish.wa.gov.au/Documents/recreational_fishing/additional_fishing_information/send_us_your_squid_flyer.pdf)  

The data is a very comprehensive biological assay of the Southern Calamari of Western Australia.  

![Image of Southern Calamari](http://www.redmap.org.au/assets/media/uploads/2012/12/10/3.%20Squid%20(G%20Pecl).jpg)


The samples were collected from various locations, every month for 2 years. Once the specimens were collected, bioligcal data was measured and recorded. Variables which were recorded include:
* Date and Site data
* Method of Capture
* Fish ID number
* Biological Data:
 * Hood length (HL)
 * Mantle width (Width)
 * Whole Weight
 * Mantle Weight
 * Quill Length *see picture below
* Reproductive data:
 * Sex
 * Gonad Stage
 * Gonad Weight
    * Ovary / Testes Weight
    * Sperm / Oocyte Weight

![Squid Quill](http://2.bp.blogspot.com/-jSjCkTvF2Sg/TpzcqQ-wgBI/AAAAAAAAArU/yY5IQ4pbmHc/s1600/Squid+step+four+remove+quill.jpg)

###Underlying question and task
* To investigate the reprodutive cycles of the Southern Calamari
* To find out where the spawning locations of the Southern Calamari 
* Investigate the maturation of the Southern Calamari

###Analysis:  
* :octopus: :octopus: Data Exploration (MURUG meeting 2)
* Calculate the Gonadosomatic Index, defined as:   
  * (Gonad Weight / Whole Weight) * 100  

* Calculate the Sex Ratio, defined as:  
  * (Number of Males / Number of Females) * 100  

* Plot the Gonadosomatic Index (GSI) as a time series, contrasting between males and females for each sampling region
* Plot the Gonad Stage as a time series, contrasting between males and females for each sampling region
* Compare the mean weight (using fresh, mantle weight) between males and females (t test)
* Compare the mean weight (using fresh, mantle weight) of Southern Calamari over time, using simple linear regression
* Compare the mean length (using quill length) between males and females (t test)
* Compare the mean length (using quill length) of Southern Calamari over time, using simple linear regression

Useful references:  
* Squid Reproductive Data Analysis (Chapter 7, page 72): [Zuur, A. F., et al. "Mixed effects models and extensions in ecology with R. 2009.](http://www.highstat.com/book2.htm)
* Data Exploration Protocol: [Zuur, A. F., Ieno, E. N. and Elphick, C. S. (2010), A protocol for data exploration to avoid common statistical problems. Methods in Ecology and Evolution, 1: 3–14](http://onlinelibrary.wiley.com/doi/10.1111/j.2041-210X.2009.00001.x/epdf)
