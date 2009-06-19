# -*- mode: sh -*- ################################################
# Qwt Widget Library
# Copyright (C) 1997   Josef Wilgen
# Copyright (C) 2002   Uwe Rathmann
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the Qwt License, Version 1.0
###################################################################

include( ../qwtconfig.pri )

TEMPLATE = subdirs

contains(CONFIG, QwtPlot) {
	
	SUBDIRS += \
    	cpuplot \
    	curvdemo1   \
    	curvdemo2 \
    	errorbars \
    	simple_plot \
    	realtime_plot \
    	navigation \
    	plotmatrix \
    	spectrogram \
    	histogram 

	contains(CONFIG, QwtWidgets) {

		SUBDIRS += \
    		bode \
    		data_plot \
    		oscilloscope \
    		event_filter
	}
	
	contains(CONFIG, QwtSVGItem) {

		SUBDIRS += \
			svgmap
	}
}

contains(CONFIG, QwtWidgets) {

	SUBDIRS += \
    	sysinfo \
    	radio \
    	dials \
    	sliders
}