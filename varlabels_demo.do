


*-- Basic use 
	sysuse auto.dta, clear

	hist trunk, title("`: variable label trunk'") scheme(s1mono)
	graph export "trunk.png", as(png) replace

*-- In a loop 
	sysuse auto.dta, clear

	foreach i in trunk weight length {
		hist `i', title("`: variable label `i''") scheme(s1mono) name(`i')
	}
	
*-- Export histograms 	
	#delimit ; 
	gr combine trunk weight length, c(1) altshrink 
	xsize(5) ysize(11) scheme(s1mono);
	#delimit cr
	graph export "histograms.png",  as(png) replace 	
