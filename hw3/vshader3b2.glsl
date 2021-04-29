#version 330

// PUT YOUR CODE HERE

/*
    * This is the wireframe shader
    * NO TEXTURE MAPPING HERE
*/


// Attribute Variables to Pass to the Shader
in vec3 a_Position;

// Uniforms
uniform mat4 u_Projection;
uniform mat4 u_View;

void main() 
{
	// PUT YOUR CODE HERE
	gl_Position = u_Projection * u_View * vec4(a_Position , 1);
}
