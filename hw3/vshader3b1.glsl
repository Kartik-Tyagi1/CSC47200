#version 330

// PUT YOUR CODE HERE

/*
   * This is the texture shader
   * This will only map the texture onto the triangles, provide the camera view, and project to the screen
*/

// Attribute Variables to Pass to the Shader
in vec3 a_Position;
in vec2 a_TexCoord;

// Uniforms
uniform mat4 u_Projection;
uniform mat4 u_View;

// Output to rasterizer
out vec2 v_TexCoord;

void main() 
{
	// PUT YOUR CODE HERE
	gl_Position = u_Projection * u_View * vec4(a_Position , 1);
	v_TexCoord = a_TexCoord;
}
