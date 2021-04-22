// ======================================================================
// Computer Graphics Homework Solutions
// Copyright (C) 2019 by George Wolberg
//
// HW4a.h - Header file for HW4a class
//
// Written by: George Wolberg, 2019
// ======================================================================

#ifndef HW4A_H
#define HW4A_H

#include "HW.h"

// ----------------------------------------------------------------------
// standard include files
//

class HW4a : public HW 
{
	Q_OBJECT
public:
	// constructor
	HW4a		(const QGLFormat &glf, QWidget *parent = 0); 
	QGroupBox*	controlPanel	();		// create control panel

public slots:
	void		timeOut		();

protected:
	void		initializeGL	();		// init GL state
	void		resizeGL	(int, int);	// resize GL widget
	void		paintGL		();		// render GL scene
	void		drawSphere	(int, int);


private:
	int		 m_winW;			// window width
	int		 m_winH;			// window height
	QMatrix4x4	 m_projection;			// 4x4 projection matrix
	QMatrix4x4	 m_cameraView;			// 4x4 view  matrix
	QTimer		*m_timer;
	double		 m_time;
	GLfloat		 m_midlight[4];
	GLfloat		 m_gray[4];
	GLfloat		 m_light_pos[4];		// define light position 
};

#endif // HW4A_H
