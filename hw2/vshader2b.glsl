#version 330

in	vec2	a_Position;	// attribute variable: position vector
in	vec3	a_Color;	// attribute variable: color vector

out	vec4	v_Color;	// varying variable for passing color to fragment shader

uniform	mat4	u_Modelview;	// uniform variable for passing modelview  matrix
uniform	mat4	u_Projection;	// uniform variable for passing projection matrix
uniform	float	u_Theta;	// Theta parameter
uniform	int	u_Twist;	// Twist flag

void main() 
{
	// PUT YOUR CODE HERE
	
	if(u_Twist != 0){ 
		// Twist is on
		// The issue here is with the modelview
		
		/*
		
		modelview looks something like this
		
		cos(th)  -sin(th) 0  0
		sin(th)   cos(th) 0  0 
		0             0   0  0
		0             0   0  0
		
		
		In the update theta in the cpp file there is no way we can access the angle and modify it with the distance value
		Basically, it does not get updated with the distance to rotate when the twist is on 
		
		*/
		// Because of this we can't use it in the final postion calculation
		// We have to calculate it ourselves using the same method as used in rotTwist used in HW1B
		
		float dist = 0;
		float x = a_Position.x;
		float y = a_Position.y;
		
		dist = sqrt(x*x + y*y);
		
		float sinTheta = sin(dist * u_Theta);
		float cosTheta = cos(dist * u_Theta);
		gl_Position = u_Projection * vec4(x*cosTheta - y*sinTheta, x*sinTheta + y*cosTheta, 0, 1);
		
	}
	else{ 
		// Twist is off
		// No need to factor in distance becuase modelview is updated when theta slider is changed 
		gl_Position = u_Projection * u_Modelview * vec4(a_Position,0,1);
	}

	
	v_Color = vec4(a_Color, 1.0);
	
}
