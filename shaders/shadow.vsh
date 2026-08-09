#version 120

const int shadowMapResolution = 2048; // [512 1024 2048 4096]
const float shadowDistance = 160.0; // [64.0 96.0 128.0 160.0 192.0 224.0 256.0 320.0]

void main() {
    gl_Position = ftransform();
}
