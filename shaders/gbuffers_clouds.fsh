#version 120

/* RENDERTARGETS: 0,1 */

varying vec2 vTex;

uniform sampler2D texture;
uniform int worldTime;
uniform float rainStrength;

#include "lib/common.glsl"

void main() {
    vec4 albedo = texture2D(texture, vTex);

    float t = dayFactor(float(worldTime));
    float rain = clamp(rainStrength, 0.0, 1.0);

    vec3 c = albedo.rgb;
    c *= mix(0.50, 1.30, t);
    c *= mix(1.0, 0.40, rain);
    c = applyVibrance(c, 1.0);

    gl_FragData[0] = vec4(c, albedo.a);
    gl_FragData[1] = vec4(1.0, 0.0, 0.0, 1.0);
}