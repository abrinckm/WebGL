
/*
** Copyright (c) 2012 The Khronos Group Inc.
**
** Permission is hereby granted, free of charge, to any person obtaining a
** copy of this software and/or associated documentation files (the
** "Materials"), to deal in the Materials without restriction, including
** without limitation the rights to use, copy, modify, merge, publish,
** distribute, sublicense, and/or sell copies of the Materials, and to
** permit persons to whom the Materials are furnished to do so, subject to
** the following conditions:
**
** The above copyright notice and this permission notice shall be included
** in all copies or substantial portions of the Materials.
**
** THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
** EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
** MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
** IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
** CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
** TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
** MATERIALS OR THE USE OR OTHER DEALINGS IN THE MATERIALS.
*/


attribute vec4 gtf_Vertex;
attribute vec4 gtf_Color;
uniform mat4 gtf_ModelViewProjectionMatrix;
varying vec4 color;

void main (void)
{
	const float M_PI = 3.14159265358979323846;
	vec3 c = 4.0 * 2.0 * (gtf_Color.rgb - 0.5);
	vec3 atan_c = vec3(0.0);
	vec3 scale = vec3(1.0);
	vec3 sign = vec3(1.0);
	vec4 result = vec4(0.0, 0.0, 0.0, 1.0);

	if(c[0] < 0.0)
	{
		sign[0] = -1.0;
		c[0] *= -1.0;
	}

	if(c[0] <= 1.0)
	{
		// Taylors series expansion for atan
		atan_c[0] += scale[0] * pow(c[0], float(1)) / float(1);
		scale[0] *= -1.0;
		atan_c[0] += scale[0] * pow(c[0], float(3)) / float(3);
		scale[0] *= -1.0;
		atan_c[0] += scale[0] * pow(c[0], float(5)) / float(5);
		scale[0] *= -1.0;
		atan_c[0] += scale[0] * pow(c[0], float(7)) / float(7);
		scale[0] *= -1.0;
		atan_c[0] += scale[0] * pow(c[0], float(9)) / float(9);
		scale[0] *= -1.0;
		atan_c[0] += scale[0] * pow(c[0], float(11)) / float(11);
		scale[0] *= -1.0;

		result[0] = sign[0] * atan_c[0] / M_PI + 0.5;
	}
	else
	{
		c[0] = 1.0 / c[0];

		// Taylors series expansion for atan
		atan_c[0] += scale[0] * pow(c[0], float(1)) / float(1);
		scale[0] *= -1.0;
		atan_c[0] += scale[0] * pow(c[0], float(3)) / float(3);
		scale[0] *= -1.0;
		atan_c[0] += scale[0] * pow(c[0], float(5)) / float(5);
		scale[0] *= -1.0;
		atan_c[0] += scale[0] * pow(c[0], float(7)) / float(7);
		scale[0] *= -1.0;
		atan_c[0] += scale[0] * pow(c[0], float(9)) / float(9);
		scale[0] *= -1.0;
		atan_c[0] += scale[0] * pow(c[0], float(11)) / float(11);
		scale[0] *= -1.0;

		result[0] = sign[0] * (M_PI / 2.0 - atan_c[0]) / M_PI + 0.5;
	}


	if(c[1] < 0.0)
	{
		sign[1] = -1.0;
		c[1] *= -1.0;
	}

	if(c[1] <= 1.0)
	{
		// Taylors series expansion for atan
		atan_c[1] += scale[1] * pow(c[1], float(1)) / float(1);
		scale[1] *= -1.0;
		atan_c[1] += scale[1] * pow(c[1], float(3)) / float(3);
		scale[1] *= -1.0;
		atan_c[1] += scale[1] * pow(c[1], float(5)) / float(5);
		scale[1] *= -1.0;
		atan_c[1] += scale[1] * pow(c[1], float(7)) / float(7);
		scale[1] *= -1.0;
		atan_c[1] += scale[1] * pow(c[1], float(9)) / float(9);
		scale[1] *= -1.0;
		atan_c[1] += scale[1] * pow(c[1], float(11)) / float(11);
		scale[1] *= -1.0;

		result[1] = sign[1] * atan_c[1] / M_PI + 0.5;
	}
	else
	{
		c[1] = 1.0 / c[1];

		// Taylors series expansion for atan
		atan_c[1] += scale[1] * pow(c[1], float(1)) / float(1);
		scale[1] *= -1.0;
		atan_c[1] += scale[1] * pow(c[1], float(3)) / float(3);
		scale[1] *= -1.0;
		atan_c[1] += scale[1] * pow(c[1], float(5)) / float(5);
		scale[1] *= -1.0;
		atan_c[1] += scale[1] * pow(c[1], float(7)) / float(7);
		scale[1] *= -1.0;
		atan_c[1] += scale[1] * pow(c[1], float(9)) / float(9);
		scale[1] *= -1.0;
		atan_c[1] += scale[1] * pow(c[1], float(11)) / float(11);
		scale[1] *= -1.0;

		result[1] = sign[1] * (M_PI / 2.0 - atan_c[1]) / M_PI + 0.5;
	}

	if(c[2] < 0.0)
	{
		sign[2] = -1.0;
		c[2] *= -1.0;
	}

	if(c[2] <= 1.0)
	{
		// Taylors series expansion for atan
		atan_c[2] += scale[2] * pow(c[2], float(1)) / float(1);
		scale[2] *= -1.0;
		atan_c[2] += scale[2] * pow(c[2], float(3)) / float(3);
		scale[2] *= -1.0;
		atan_c[2] += scale[2] * pow(c[2], float(5)) / float(5);
		scale[2] *= -1.0;
		atan_c[2] += scale[2] * pow(c[2], float(7)) / float(7);
		scale[2] *= -1.0;
		atan_c[2] += scale[2] * pow(c[2], float(9)) / float(9);
		scale[2] *= -1.0;
		atan_c[2] += scale[2] * pow(c[2], float(11)) / float(11);
		scale[2] *= -1.0;

		result[2] = sign[2] * atan_c[2] / M_PI + 0.5;
	}
	else
	{
		c[2] = 1.0 / c[2];

		// Taylors series expansion for atan
		atan_c[2] += scale[2] * pow(c[2], float(1)) / float(1);
		scale[2] *= -1.0;
		atan_c[2] += scale[2] * pow(c[2], float(3)) / float(3);
		scale[2] *= -1.0;
		atan_c[2] += scale[2] * pow(c[2], float(5)) / float(5);
		scale[2] *= -1.0;
		atan_c[2] += scale[2] * pow(c[2], float(7)) / float(7);
		scale[2] *= -1.0;
		atan_c[2] += scale[2] * pow(c[2], float(9)) / float(9);
		scale[2] *= -1.0;
		atan_c[2] += scale[2] * pow(c[2], float(11)) / float(11);
		scale[2] *= -1.0;

		result[2] = sign[2] * (M_PI / 2.0 - atan_c[2]) / M_PI + 0.5;
	}

	color = result;
	gl_Position = gtf_ModelViewProjectionMatrix * gtf_Vertex;
}
