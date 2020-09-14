

*-- Basic use 
	sysuse auto.dta, clear

	hist trunk, title("`: variable label trunk'") scheme(s1mono)
	graph export "trunk.png", as(png) replace

*-- In a loop 
	sysuse auto.dta, clear

	foreach i in trunk weight length {
	hist `i', title("`: variable label `i''") scheme(s1mono)
	graph export "`i'.png", as(png) replace
	}
