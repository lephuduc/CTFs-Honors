
attribute vec3 position;
uniform   mat4 mvpMatrix;
varying   vec2 vPosition;

void main(void){
    gl_Position = mvpMatrix * vec4(position, 1.0);
    vPosition = position.xy;
}


#ifdef GL_ES
precision mediump float;
#endif            

uniform float u_time;
uniform vec2 u_resolution;
varying vec2 vPosition;

vec3 hash(vec2 seed){
    vec3 p3 = fract(float(seed.x + seed.y*86.) * vec3(.1051, .1020, .0983));
\tp3 += dot(p3, p3.yzx + 33.33);
    return fract(p3);
}

vec3 layer(float scale, vec2 uv, float time){
    // uv coord in cell
    vec2 scaled_uv = uv * scale - 0.5;
    vec2 uv0 = fract( scaled_uv ) - 0.5;
    // cell id
    vec2 cell_id = scaled_uv - fract(scaled_uv);
    
    
    vec3 col = vec3(0);
    float speed = 1.5;
    // distance to a spinning random point in the cell (also surrounding cells)
    vec3 seed = hash(cell_id);

    float radiance = seed.x + time * seed.y;
    vec2 center_of_star = vec2(sin(radiance), cos(radiance))*0.3;

    // radial distort effect for star shine
    vec2 v_to_star = uv0 - center_of_star;
    float star_radiance = atan(v_to_star.x/v_to_star.y);
    float star_spark_1 = sin(star_radiance*14.+radiance*6.);
    float star_spark_2 = sin(star_radiance*8.-radiance*2.);
    float stars = length(v_to_star) * (5.+star_spark_1+star_spark_2) * 0.03;
    col += smoothstep(length(seed) * 0.01, 0., stars);
    return col;
}
void main()
{    // center global uv from -1 to 1
    vec2 virtual_resolution = vec2(2.0, 2.0);
    vec2 uv = (vPosition * 2. - virtual_resolution.xy) / virtual_resolution.y;
    vec3 col = vec3(0.);//vColor.xyz;
    
    const float layer_count = 6.5;
    for(float i = 0.0; i < layer_count; i+=1.){
        float rotate_speed = u_time*0.4;
        float scale = mod(i - rotate_speed, layer_count)*1.5;
        vec2 offseted_uv = uv + vec2(sin(rotate_speed), cos(rotate_speed));
        vec3 layer_col = layer(scale, offseted_uv, u_time + i*1.5);
        
        // we want the star to smoothly show up
        float max_scale = layer_count * 1.5;
        float color_amp = smoothstep(0., 1., smoothstep(max_scale, 0., scale));
        col += layer_col * color_amp;
    }
    // blue background
    col += vec3(0., 0., -0.15) * (uv.y - 0.7) * pow(length(uv), 0.5);
    gl_FragColor = vec4(col, 1.);
}
  