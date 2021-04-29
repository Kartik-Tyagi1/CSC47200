#version 330

// PUT YOUR CODE HERE

/*
    * This shader is responsible for attaching the texture to the fragments
*/

// In variable from the rasterizer (and vertex shader before that)
in vec2 v_TexCoord;

// Uniform variable for the texture image
uniform sampler2D u_Sampler;	

// Out variable for fragment color
out vec4 fragColor;

void main() 
{
	// PUT YOUR CODE HERE
	fragColor = texture(u_Sampler, v_TexCoord);
	
}




	
