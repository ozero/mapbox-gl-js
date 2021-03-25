attribute vec2 a_pos;

uniform mat4 u_matrix;

#ifdef FOG
varying vec3 v_fog_pos;
#endif

#pragma mapbox: define highp vec4 color
#pragma mapbox: define lowp float opacity

void main() {
    #pragma mapbox: initialize highp vec4 color
    #pragma mapbox: initialize lowp float opacity

    gl_Position = u_matrix * vec4(a_pos, 0, 1);

#ifdef FOG
    v_fog_pos = fog_position(a_pos);
#endif
}
