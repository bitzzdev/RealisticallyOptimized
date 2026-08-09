#version 120

varying vec2 vTex;

void main() {
    gl_Position = ftransform();
    vTex = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
}