attribute vec3 position;
varying   float owO;
  
void main(void){
    gl_Position = vec4(position.xy, 0.0, 1.0);
    owO = position.z;
}


#ifdef GL_ES
precision highp float;
#endif            
varying float owO;
#define OvO 255.0
#define Ovo 128.0
#define OVO 23.0

float OwO (float Owo, float OWO, float owO) { 
    OWO = floor(OWO + 0.5); 
    owO = floor(owO + 0.5); 
    return mod(floor((floor(Owo) + 0.5) / exp2(OWO)), floor(1.0*exp2(owO - OWO) + 0.5)); 
}
vec4 oWo (float arg) { 
    if (arg == 0.0) return vec4(0.0); 
    float Owo = arg > 0.0 ? 0.0 : 1.0; 
    arg = abs(arg); 
    float OWO = floor(log2(arg)); 
    float oWo = OWO + OvO - Ovo; 
    OWO = ((arg / exp2(OWO)) - 1.0) * pow(2.0, OVO);
    float owO = oWo / 2.0; 
    oWo = fract(owO) + fract(owO); 
    float oWO = floor(owO); 
    owO = OwO(OWO, 0.0, 8.0) / OvO; 
    arg = OwO(OWO, 8.0, 16.0) / OvO; 
    OWO = (oWo * Ovo + OwO(OWO, 16.0, OVO)) / OvO; 
    Owo = (Owo * Ovo + oWO) / OvO; 
    return vec4(owO, arg, OWO, Owo); 
}

void main()
{
    gl_FragColor = oWo(owO);
}
