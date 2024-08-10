const _0x464c09 = function () {
    let _0x451913 = true;
    return function (_0x258426, _0x4b7b8d) {
      const _0x1bb18e = _0x451913 ? function () {
        if (_0x4b7b8d) {
          const _0x2d8886 = _0x4b7b8d.apply(_0x258426, arguments);
          _0x4b7b8d = null;
          return _0x2d8886;
        }
      } : function () {};
      _0x451913 = false;
      return _0x1bb18e;
    };
  }();
  const _0x4c494b = _0x464c09(this, function () {
    return _0x4c494b.toString().search("(((.+)+)+)+$").toString().constructor(_0x4c494b).search("(((.+)+)+)+$");
  });
  _0x4c494b();
  window.addEventListener("load", _0xe99c5d);
  var canvas_;
  var canvas_calc;
  function _0xe99c5d() {
    canvas_ = new CreateShaders("canvas", 0x0, 0x0, "\n  attribute vec3 position;\n  uniform   mat4 mvpMatrix;\n  varying   vec2 vPosition;\n\n  void main(void){\n      gl_Position = mvpMatrix * vec4(position, 1.0);\n      vPosition = position.xy;\n  }\n  ", "\n#ifdef GL_ES\nprecision mediump float;\n#endif            \n\nuniform float u_time;\nuniform vec2 u_resolution;\nvarying vec2 vPosition;\n\nvec3 hash(vec2 seed){\n    vec3 p3 = fract(float(seed.x + seed.y*86.) * vec3(.1051, .1020, .0983));\n\tp3 += dot(p3, p3.yzx + 33.33);\n    return fract(p3);\n}\n\nvec3 layer(float scale, vec2 uv, float time){\n    // uv coord in cell\n    vec2 scaled_uv = uv * scale - 0.5;\n    vec2 uv0 = fract( scaled_uv ) - 0.5;\n    // cell id\n    vec2 cell_id = scaled_uv - fract(scaled_uv);\n    \n    \n    vec3 col = vec3(0);\n    float speed = 1.5;\n    // distance to a spinning random point in the cell (also surrounding cells)\n    vec3 seed = hash(cell_id);\n\n    float radiance = seed.x + time * seed.y;\n    vec2 center_of_star = vec2(sin(radiance), cos(radiance))*0.3;\n\n    // radial distort effect for star shine\n    vec2 v_to_star = uv0 - center_of_star;\n    float star_radiance = atan(v_to_star.x/v_to_star.y);\n    float star_spark_1 = sin(star_radiance*14.+radiance*6.);\n    float star_spark_2 = sin(star_radiance*8.-radiance*2.);\n    float stars = length(v_to_star) * (5.+star_spark_1+star_spark_2) * 0.03;\n    col += smoothstep(length(seed) * 0.01, 0., stars);\n    return col;\n}\nvoid main()\n{    // center global uv from -1 to 1\n    vec2 virtual_resolution = vec2(2.0, 2.0);\n    vec2 uv = (vPosition * 2. - virtual_resolution.xy) / virtual_resolution.y;\n    vec3 col = vec3(0.);//vColor.xyz;\n    \n    const float layer_count = 6.5;\n    for(float i = 0.0; i < layer_count; i+=1.){\n        float rotate_speed = u_time*0.4;\n        float scale = mod(i - rotate_speed, layer_count)*1.5;\n        vec2 offseted_uv = uv + vec2(sin(rotate_speed), cos(rotate_speed));\n        vec3 layer_col = layer(scale, offseted_uv, u_time + i*1.5);\n        \n        // we want the star to smoothly show up\n        float max_scale = layer_count * 1.5;\n        float color_amp = smoothstep(0., 1., smoothstep(max_scale, 0., scale));\n        col += layer_col * color_amp;\n    }\n    // blue background\n    col += vec3(0., 0., -0.15) * (uv.y - 0.7) * pow(length(uv), 0.5);\n    gl_FragColor = vec4(col, 1.);\n}\n  ", true);
    canvas_.render();
    canvas_calc = new CreateShaders("canvas-calc", 0x28a, 0x28a, "\n  attribute vec3 position;\n  varying   float owO;\n  \n  void main(void){\n      gl_Position = vec4(position.xy, 0.0, 1.0);\n      owO = position.z;\n  }\n  ", "\n#ifdef GL_ES\nprecision highp float;\n#endif            \nvarying float owO;\n#define OvO 255.0\n#define Ovo 128.0\n#define OVO 23.0\n\nfloat OwO (float Owo, float OWO, float owO) { \n    OWO = floor(OWO + 0.5); owO = floor(owO + 0.5); \n    return mod(floor((floor(Owo) + 0.5) / exp2(OWO)), floor(1.0*exp2(owO - OWO) + 0.5)); \n}\nvec4 oWo (float Ow0) { \n    if (Ow0 == 0.0) return vec4(0.0); \n    float Owo = Ow0 > 0.0 ? 0.0 : 1.0; \n    Ow0 = abs(Ow0); \n    float OWO = floor(log2(Ow0)); \n    float oWo = OWO + OvO - Ovo; \n    OWO = ((Ow0 / exp2(OWO)) - 1.0) * pow(2.0, OVO);\n    float owO = oWo / 2.0; \n    oWo = fract(owO) + fract(owO); \n    float oWO = floor(owO); \n    owO = OwO(OWO, 0.0, 8.0) / OvO; \n    Ow0 = OwO(OWO, 8.0, 16.0) / OvO; \n    OWO = (oWo * Ovo + OwO(OWO, 16.0, OVO)) / OvO; \n    Owo = (Owo * Ovo + oWO) / OvO; \n    return vec4(owO, Ow0, OWO, Owo); \n}\n\nvoid main()\n{\n    gl_FragColor = oWo(owO);\n}\n  ", false);
    canvas_calc.render();
    let pattern_container = document.getElementById("pattern-container");
    let _0x2d06d1 = document.getElementById('lines');
    let _0x49f825 = null;
    let _0x3a306e = null;
    let _0x316e9f = false;
    let _0x1d7494 = [];
    pattern_container.childNodes.forEach(p => {
      if (!p.classList) {
        return;
      }
      if (!p.classList.contains("dot")) {
        return;
      }
      p.addEventListener('mousedown', _0x5be741 => {
        _0x1d7494.forEach(_0x2ca3e5 => {
          _0x2ca3e5.classList.remove("selected");
          _0x2ca3e5.classList.remove("select");
          _0x2ca3e5.classList.remove("lose");
          _0x2ca3e5.classList.remove("win");
        });
        _0x2d06d1.innerHTML = '';
        _0x1d7494 = [];
        _0x316e9f = true;
        p.classList.add("select");
        _0x3a306e = document.createElementNS("http://www.w3.org/2000/svg", "line");
        _0x3a306e.setAttribute('x1', p.offsetLeft + p.offsetWidth / 0x2);
        _0x3a306e.setAttribute('y1', p.offsetTop + p.offsetHeight / 0x2);
        _0x3a306e.setAttribute('x2', p.offsetLeft + p.offsetWidth / 0x2);
        _0x3a306e.setAttribute('y2', p.offsetTop + p.offsetHeight / 0x2);
        _0x3a306e.setAttribute("stroke", "white");
        _0x3a306e.setAttribute("stroke-width", '5');
        _0x2d06d1.appendChild(_0x3a306e);
        _0x1d7494.push(p);
        _0x49f825 = p;
      });
      p.addEventListener("mouseover", _0x1cae46 => {
        if (!_0x316e9f) {
          return;
        }
        if (p.classList.contains('selected')) {
          return;
        }
        if (p.classList.contains("select")) {
          return;
        }
        if (_0x3a306e) {
          _0x3a306e.setAttribute('x2', p.offsetLeft + p.offsetWidth / 0x2);
          _0x3a306e.setAttribute('y2', p.offsetTop + p.offsetHeight / 0x2);
          _0x49f825.classList.add("selected");
          _0x49f825.classList.remove("select");
        }
        p.classList.add("select");
        _0x3a306e = document.createElementNS("http://www.w3.org/2000/svg", 'line');
        _0x3a306e.setAttribute('x1', p.offsetLeft + p.offsetWidth / 0x2);
        _0x3a306e.setAttribute('y1', p.offsetTop + p.offsetHeight / 0x2);
        _0x3a306e.setAttribute('x2', p.offsetLeft + p.offsetWidth / 0x2);
        _0x3a306e.setAttribute('y2', p.offsetTop + p.offsetHeight / 0x2);
        _0x3a306e.setAttribute("stroke", "white");
        _0x3a306e.setAttribute("stroke-width", '5');
        _0x2d06d1.appendChild(_0x3a306e);
        _0x1d7494.push(p);
        _0x49f825 = p;
      });
    });
    pattern_container.addEventListener('mousemove', _0x3c10fa => {
      if (!_0x316e9f) {
        return;
      }
      if (_0x49f825 && _0x3a306e) {
        _0x3a306e.setAttribute('x2', _0x3c10fa.clientX - pattern_container.getBoundingClientRect().left);
        _0x3a306e.setAttribute('y2', _0x3c10fa.clientY - pattern_container.getBoundingClientRect().top);
      }
    });
    pattern_container.addEventListener('mouseup', _0x3584c1 => {
      if (_0x49f825 && _0x3a306e) {
        _0x3a306e.setAttribute('x2', _0x49f825.offsetLeft + _0x49f825.offsetWidth / 0x2);
        _0x3a306e.setAttribute('y2', _0x49f825.offsetTop + _0x49f825.offsetHeight / 0x2);
        _0x49f825.classList.add("selected");
        _0x49f825 = null;
        let flag = check_flag(_0x1d7494.map(data_numbers => parseInt(data_numbers.dataset.number)));
        if (flag !== null) {
          _0x1d7494.forEach(_0x3de332 => {
            _0x3de332.classList.add('win');
          });
          let _0x2ad44b = document.getElementById("flag");
          _0x2ad44b.innerText = flag;
        } else {
          _0x1d7494.forEach(_0x58e683 => {
            _0x58e683.classList.add("lose");
          });
        }
      }
      _0x316e9f = false;
    });
  }
  function _abs(_0x11d161) {
    return Math.abs(_0x11d161);
  }
  function check_flag(numbers) {
    let g0 = canvas_calc.wtf(numbers[0x13], numbers[0x3], numbers[0x5]) * 0x19;
    let g1 = canvas_calc.wtf(numbers[0x7], numbers[0x14], numbers[0x12]) * 0x19;
    let g2 = canvas_calc.wtf(numbers[0xb], numbers[0x16], numbers[0x12]) * 0x19;
    let g3 = canvas_calc.wtf(numbers[0x5], numbers[0x11], numbers[0x2]) * 0x19;
    let g4 = canvas_calc.wtf(numbers[0x14], numbers[0xd], numbers[0x5]) * 0x19;
    let g5 = canvas_calc.wtf(numbers[0xb], numbers[0x1], numbers[0x15]) * 0x19;
    let g6 = canvas_calc.wtf(numbers[0x8], numbers[0xb], numbers[0x1]) * 0x19;
    let g7 = canvas_calc.wtf(numbers[0x9], numbers[0x5], numbers[0x4]) * 0x19;
    let g8 = canvas_calc.wtf(numbers[0x11], numbers[0x9], numbers[0x15]) * 0x19;
    let g9 = canvas_calc.wtf(numbers[0x17], numbers[0x9], numbers[0x14]) * 0x19;
    let g10 = canvas_calc.wtf(numbers[0x10], numbers[0x5], numbers[0x4]) * 0x19;
    let g11 = canvas_calc.wtf(numbers[0x10], numbers[0xe], numbers[0xd]) * 0x19;
    let g12 = canvas_calc.wtf(numbers[0x5], numbers[0x6], numbers[0xa]) * 0x19;
    let g13 = canvas_calc.wtf(numbers[0x2], numbers[0xb], numbers[0x5]) * 0x19;
    let g14 = canvas_calc.wtf(numbers[0xb], numbers[0x3], numbers[0x1]) * 0x19;
    let g15 = canvas_calc.wtf(numbers[0xc], numbers[0x3], numbers[0xa]) * 0x19;
    let g16 = canvas_calc.wtf(numbers[0xe], numbers[0x1], numbers[0x9]) * 0x19;
    let g17 = canvas_calc.wtf(numbers[0x12], numbers[0xb], numbers[0x11]) * 0x19;
    let g18 = canvas_calc.wtf(numbers[0xc], numbers[0xf], numbers[0x2]) * 0x19;
    let g19 = canvas_calc.wtf(numbers[0x16], numbers[0x0], numbers[0x13]) * 0x19;
    let check_value = 0x0;
    check_value += Math.abs(0.3837876686390533 - canvas_calc.gtfo(g5, g16, g8, 0x10, 0x15));
    check_value += Math.abs(0.21054889940828397 - canvas_calc.gtfo(g14, g5, g6, 0x8, 0x2));
    check_value += Math.abs(0.475323349112426 - canvas_calc.gtfo(g5, g17, g12, 0x0, 0x14));
    check_value += Math.abs(0.6338370887573964 - canvas_calc.gtfo(g3, g1, g12, 0x8, 0x4));
    check_value += Math.abs(0.4111607928994082 - canvas_calc.gtfo(g2, g14, g15, 0x17, 0x1));
    check_value += Math.abs(0.7707577751479291 - canvas_calc.gtfo(g17, g3, g11, 0x14, 0x6));
    check_value += Math.abs(0.7743081420118344 - canvas_calc.gtfo(g9, g13, g3, 0x9, 0xa));
    check_value += Math.abs(0.36471487573964495 - canvas_calc.gtfo(g8, g0, g4, 0x12, 0x8));
    check_value += Math.abs(0.312678449704142 - canvas_calc.gtfo(g15, g9, g17, 0x0, 0x11));
    check_value += Math.abs(0.9502808165680473 - canvas_calc.gtfo(g18, g9, g3, 0x16, 0xa));
    check_value += Math.abs(0.5869052899408282 - canvas_calc.gtfo(g12, g7, g2, 0xe, 0xa));
    check_value += Math.abs(0.9323389467455623 - canvas_calc.gtfo(g17, g2, g12, 0xc, 0x7));
    check_value += Math.abs(0.4587118106508875 - canvas_calc.gtfo(g6, g13, g2, 0x4, 0x15));
    check_value += Math.abs(0.14484472189349107 - canvas_calc.gtfo(g15, g9, g14, 0x7, 0xf));
    check_value += Math.abs(0.7255550059171598 - canvas_calc.gtfo(g5, g17, g18, 0x9, 0x17));
    check_value += Math.abs(0.5031261301775147 - canvas_calc.gtfo(g3, g2, g14, 0x7, 0x1));
    check_value += Math.abs(0.1417352189349112 - canvas_calc.gtfo(g6, g14, g8, 0x10, 0xe));
    check_value += Math.abs(0.5579334437869822 - canvas_calc.gtfo(g14, g2, g18, 0x13, 0xb));
    check_value += Math.abs(0.48502262721893485 - canvas_calc.gtfo(g10, g4, g7, 0x17, 0x12));
    check_value += Math.abs(0.5920916568047336 - canvas_calc.gtfo(g7, g8, g1, 0x13, 0x6));
    check_value += Math.abs(0.7222713017751479 - canvas_calc.gtfo(g16, g2, g4, 0x8, 0x10));
    check_value += Math.abs(0.12367382248520711 - canvas_calc.gtfo(g10, g15, g12, 0x9, 0x5));
    check_value += Math.abs(0.4558028402366864 - canvas_calc.gtfo(g11, g10, g2, 0xa, 0x2));
    check_value += Math.abs(0.8537692426035504 - canvas_calc.gtfo(g17, g9, g13, 0x4, 0xb));
    check_value += Math.abs(0.9618170650887574 - canvas_calc.gtfo(g12, g18, g17, 0xf, 0x2));
    check_value += Math.abs(0.22088933727810647 - canvas_calc.gtfo(g0, g7, g16, 0xa, 0x5));
    check_value += Math.abs(0.4302783550295858 - canvas_calc.gtfo(g16, g11, g5, 0xe, 0x2));  // 3 7 1
    check_value += Math.abs(0.6262803313609467 - canvas_calc.gtfo(g19, g14, g2, 0x11, 0x16)); // 18 0 4
    if (check_value > 0.00001) {
      return null;
    }
    s = '';
    s += Math.round(canvas_calc.wtf(numbers[0x4], numbers[0x2], numbers[0x16]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x11], numbers[0x9], numbers[0xe]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x4], numbers[0xd], numbers[0x7]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x4], numbers[0x14], numbers[0x17]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x5], numbers[0x7], numbers[0xc]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x14], numbers[0x13], numbers[0x4]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x11], numbers[0x6], numbers[0x13]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x6], numbers[0x15], numbers[0x12]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x4], numbers[0x3], numbers[0x8]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0xb], numbers[0x7], numbers[0xe]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x9], numbers[0x2], numbers[0xd]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x16], numbers[0xa], numbers[0x3]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0xf], numbers[0x16], numbers[0xd]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x10], numbers[0xc], numbers[0x9]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0xe], numbers[0x8], numbers[0x11]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x1], numbers[0x12], numbers[0x6]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0xa], numbers[0xb], numbers[0x3]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x8], numbers[0xc], numbers[0x5]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x1], numbers[0x3], numbers[0xc]) * 0x186a0).toString();
    s += Math.round(canvas_calc.wtf(numbers[0x9], numbers[0xd], numbers[0x7]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x16], numbers[0xd], numbers[0x5], numbers[0x4], numbers[0x7]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0xa], numbers[0xe], numbers[0x11], numbers[0x17], numbers[0xb]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x17], numbers[0x14], numbers[0x6], numbers[0x1], numbers[0x3]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0xf], numbers[0xc], numbers[0x2], numbers[0xd], numbers[0x9]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x10], numbers[0x14], numbers[0x6], numbers[0x5], numbers[0x12]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x3], numbers[0x6], numbers[0x7], numbers[0x8], numbers[0x17]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x15], numbers[0x9], numbers[0xa], numbers[0x3], numbers[0x16]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0xe], numbers[0x6], numbers[0xf], numbers[0xc], numbers[0x13]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0xd], numbers[0x13], numbers[0x16], numbers[0x17], numbers[0x1]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x15], numbers[0x2], numbers[0x9], numbers[0x0], numbers[0x13]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x5], numbers[0x13], numbers[0x15], numbers[0xe], numbers[0x6]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x10], numbers[0xf], numbers[0x14], numbers[0xd], numbers[0x3]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x14], numbers[0xf], numbers[0xa], numbers[0x15], numbers[0x6]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x7], numbers[0x1], numbers[0x15], numbers[0x14], numbers[0x3]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x9], numbers[0x14], numbers[0x1], numbers[0xa], numbers[0x6]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0xa], numbers[0x2], numbers[0x1], numbers[0x10], numbers[0x4]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0xf], numbers[0x5], numbers[0x14], numbers[0x13], numbers[0x8]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x14], numbers[0x8], numbers[0x15], numbers[0xa], numbers[0xc]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x13], numbers[0x5], numbers[0x4], numbers[0x2], numbers[0x16]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0xa], numbers[0x14], numbers[0xe], numbers[0x9], numbers[0x7]) * 0x186a0).toString();
    let flag = decrypt_flag(s);
    s += Math.round(canvas_calc.gtfo(numbers[0x5], numbers[0xf], numbers[0x9], numbers[0xd], numbers[0x10]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x14], numbers[0x8], numbers[0xb], numbers[0x16], numbers[0x17]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x16], numbers[0x3], numbers[0x1], numbers[0x11], numbers[0xf]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x4], numbers[0x8], numbers[0xe], numbers[0x3], numbers[0x11]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0xc], numbers[0x6], numbers[0xb], numbers[0xa], numbers[0xf]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0xd], numbers[0x5], numbers[0x2], numbers[0x4], numbers[0x9]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x15], numbers[0xc], numbers[0x13], numbers[0xb], numbers[0x14]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0xd], numbers[0xb], numbers[0x12], numbers[0xc], numbers[0x14]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0xb], numbers[0x2], numbers[0x8], numbers[0x3], numbers[0x10]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x10], numbers[0x1], numbers[0x5], numbers[0x4], numbers[0x16]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x0], numbers[0x3], numbers[0xc], numbers[0xa], numbers[0x1]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x13], numbers[0x16], numbers[0x11], numbers[0xe], numbers[0xd]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0xe], numbers[0x2], numbers[0xa], numbers[0x12], numbers[0x10]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x15], numbers[0x0], numbers[0x12], numbers[0x13], numbers[0x4]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x16], numbers[0xc], numbers[0x9], numbers[0x10], numbers[0x11]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x4], numbers[0x12], numbers[0xf], numbers[0x0], numbers[0xe]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x9], numbers[0x5], numbers[0x13], numbers[0x14], numbers[0xc]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0xa], numbers[0x6], numbers[0x14], numbers[0xb], numbers[0x5]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x1], numbers[0xb], numbers[0x16], numbers[0xd], numbers[0x9]) * 0x186a0).toString();
    s += Math.round(canvas_calc.gtfo(numbers[0x1], numbers[0x13], numbers[0xa], numbers[0x0], numbers[0x12]) * 0x186a0).toString();
    return flag;
  }
  function decrypt_flag(str) {
    let key = CryptoJS.enc.Hex.parse(CryptoJS.SHA256(str).toString(CryptoJS.enc.Hex));
    let iv = CryptoJS.enc.Hex.parse("fd3cb6c1be89457ba82919a33f02707c");
    let ciphertext = CryptoJS.enc.Hex.parse("4f6b9161b29e59e2d94fa90529d745601473cb4203c02d9549eea6e322908d71e0472241d86f3821b3c96dd82937b04dcef80b9f68b23dd2371d2a56ef873ce857563eefc6f9057aa0cc5b41ff87477256f6b56ef342da815099d1217d301d03b76e4fae675d27bf95ca43154015b964");
    let decrypted = CryptoJS.AES.decrypt({
      'ciphertext': ciphertext
    }, key, {
      'iv': iv,
      'padding': CryptoJS.pad.Pkcs7,
      'mode': CryptoJS.mode.CBC,
      'hasher': CryptoJS.algo.SHA256
    });
    return decrypted.toString(CryptoJS.enc.Utf8);
  }
  class CreateShaders {
    constructor(element_ID, width, height, vertex_shader, flag_color, requestCallBack) {
      this.canvas = document.getElementById(element_ID);
      if (width != 0x0 && height != 0x0) {
        this.canvas.width = width;
        this.canvas.height = height;
      } else {
        this.canvas.width = window.innerWidth;
        this.canvas.height = window.innerHeight;
      }
      this.w = this.canvas.width;
      this.h = this.canvas.height;
      this.d = [0x4, 0x14, 0x17, 0xd, 0xb, 0x0, 0xf, 0x1, 0xe, 0x15, 0x9, 0x13, 0x8, 0x3, 0x11, 0x18, 0x10, 0x6, 0x16, 0xa, 0x7, 0x12, 0x2, 0x5, 0xc];
      this.timeLoad = performance.now();
      this.gl = this.canvas.getContext("webgl2");
      this.gl.getExtension("EXT_color_buffer_float");
      this.v_shader = this.create_shader(vertex_shader, "OuO");
      this.f_shader = this.create_shader(flag_color, ">w<");
      this.prg = this.create_program(this.v_shader, this.f_shader);

      function FrameRequestCallBack_() {
        this.render();
        this.animationFrameRequest = window.requestAnimationFrame(FrameRequestCallBack_);
      }
      if (requestCallBack) {
        FrameRequestCallBack_();
      }
      return this;
    }
      ["wtf"](num0, num1, num2) {
      this.gl.clearColor(0x0, 0x0, 0x0, 0x1);
      this.gl.clearDepth(0x1);
      this.gl.clear(this.gl.COLOR_BUFFER_BIT | this.gl.DEPTH_BUFFER_BIT);

      const position = this.gl.getAttribLocation(this.prg, "position");
      const vertex_data = [
                         -0x1, -0x1, (num0 % 0x1 + this.d[~~num0]) / 0x19,
                         -0x1, 0x1, (num1 % 0x1 + this.d[~~num1]) / 0x19,
                          0x1, 0x1, (num1 % 0x1 + this.d[~~num1]) / 0x19,
                          
                         -0x1, -0x1, (num0 % 0x1 + this.d[~~num0]) / 0x19,
                          0x1, 0x1, (num1 % 0x1 + this.d[~~num1]) / 0x19,
                          0x1, -0x1, (num0 % 0x1 + this.d[~~num0]) / 0x19];
      const vertex_buffer = this.create_vbo(vertex_data);
      this.gl.bindBuffer(this.gl.ARRAY_BUFFER, vertex_buffer);
      this.gl.enableVertexAttribArray(position);
      this.gl.vertexAttribPointer(position, 0x3, this.gl.FLOAT, false, 0x0, 0x0);
      this.gl.useProgram(this.prg);
      this.gl.drawArrays(this.gl.TRIANGLES, 0x0, 0x6);
      this.gl.flush();
      const arr = new Uint8Array(0x4);
      this.gl.readPixels(this.w / 0x2,
                        (num2 % 0x1 + this.d[~~num2]) * this.h / 0x19, 
                        0x1, 
                        0x1, 
                        this.gl.RGBA, 
                        this.gl.UNSIGNED_BYTE, 
                        arr);
      let res = new Float32Array(arr.buffer);
      return res[0x0].toFixed(0xf);
    }
    ["gtfo"](num0, num1, num2, num3, num4) {
      this.gl.clearColor(0x0, 0x0, 0x0, 0x1);
      this.gl.clearDepth(0x1);
      this.gl.clear(this.gl.COLOR_BUFFER_BIT | this.gl.DEPTH_BUFFER_BIT);
      const position = this.gl.getAttribLocation(this.prg, 'position');
      const vertex_data = [-0x1, -0x1, (num0 % 0x1 + this.d[~~num0]) / 0x19,
                            0x3, -0x1, (num1 % 0x1 + this.d[~~num1]) / 0x19,
                           -0x1, 0x3, (num2 % 0x1 + this.d[~~num2]) / 0x19];
      const vertex_buffer = this.create_vbo(vertex_data);
      this.gl.bindBuffer(this.gl.ARRAY_BUFFER, vertex_buffer);
      this.gl.enableVertexAttribArray(position);
      this.gl.vertexAttribPointer(position, 0x3, this.gl.FLOAT, false, 0x0, 0x0);
      this.gl.useProgram(this.prg);
      this.gl.drawArrays(this.gl.TRIANGLES, 0x0, 0x3);
      this.gl.flush();
      const pixel = new Uint8Array(0x4);
      this.gl.readPixels((num3 % 0x1 + this.d[~~num3]) * this.w / 0x19,
                         (num4 % 0x1 + this.d[~~num4]) * this.h / 0x19,
                          0x1,
                          0x1,
                          this.gl.RGBA,
                          this.gl.UNSIGNED_BYTE,
                          pixel);
      let res = new Float32Array(pixel.buffer);
      return res[0x0].toFixed(0xf);
    }
    ["render"]() {
      this.gl.clearColor(0x0, 0x0, 0x0, 0x1);
      this.gl.clearDepth(0x1);
      this.gl.clear(this.gl.COLOR_BUFFER_BIT | this.gl.DEPTH_BUFFER_BIT);
      let _0x39f658 = performance.now();
      this.timeDelta = (_0x39f658 - this.timePrev) / 0x3e8;
      this.timePrev = _0x39f658;
      const _0x18111e = new Array(0x2);
      _0x18111e[0x0] = this.gl.getAttribLocation(this.prg, "position");
      const _0x15ddf2 = new Array(0x2);
      _0x15ddf2[0x0] = 0x3;
      _0x15ddf2[0x1] = 0x4;
      const _0x2626af = [0x3, 0x8, 0x0, 0x7, -0x3, 0x5, 0x3, -0x8, 0x0, 0x3, 0x8, 0x0, 0x7, -0x3, 0x5, 0x7, 0x3, 0x5, 0x3, 0x8, 0x0, -0x3, -0x8, 0x0, 0x3, -0x8, 0x0, 0x3, 0x8, 0x0, -0x3, -0x8, 0x0, -0x3, 0x8, 0x0, -0x3, 0x8, 0x0, -0x7, -0x3, 0x5, -0x3, -0x8, 0x0, -0x3, 0x8, 0x0, -0x7, -0x3, 0x5, -0x7, 0x3, 0x5];
      const _0x1ebfe3 = this.create_vbo(_0x2626af);
      this.gl.bindBuffer(this.gl.ARRAY_BUFFER, _0x1ebfe3);
      this.gl.enableVertexAttribArray(_0x18111e[0x0]);
      this.gl.vertexAttribPointer(_0x18111e[0x0], _0x15ddf2[0x0], this.gl.FLOAT, false, 0x0, 0x0);
      const _0x570653 = new matIV();
      const _0x5a4b24 = _0x570653.identity(_0x570653.create());
      const _0x5f594b = _0x570653.identity(_0x570653.create());
      const _0x15df66 = _0x570653.identity(_0x570653.create());
      const _0x28d80f = _0x570653.identity(_0x570653.create());
      const _0xf54bc7 = (_0x39f658 - this.timeLoad) / 0x3e8;
      const _0x404188 = [Math.sin(Math.sin(_0xf54bc7) / 0x3), Math.cos(Math.sin(_0xf54bc7) / 0x3), 0x0];
      _0x570653.lookAt([0x0, 0x0, 0x5], [0x0, 0x0, 0x0], _0x404188, _0x5f594b);
      _0x570653.perspective(0x5a, this.canvas.width / this.canvas.height, 0.1, 0x64, _0x15df66);
      _0x570653.multiply(_0x15df66, _0x5f594b, _0x28d80f);
      _0x570653.multiply(_0x28d80f, _0x5a4b24, _0x28d80f);
      const _0x4d0a27 = this.gl.getUniformLocation(this.prg, "mvpMatrix");
      this.gl.uniformMatrix4fv(_0x4d0a27, false, _0x28d80f);
      const _0x504e76 = this.gl.getUniformLocation(this.prg, "u_time");
      this.gl.uniform1f(_0x504e76, _0xf54bc7);
      const _0x15e050 = this.gl.getUniformLocation(this.prg, "u_resolution");
      this.gl.uniform2f(_0x15e050, this.canvas.width, this.canvas.height);
      this.gl.useProgram(this.prg);
      this.gl.drawArrays(this.gl.TRIANGLES, 0x0, 0x12);
      this.gl.flush();
    }
    ["create_shader"](shaderSource, shaderType) {
      let Shader;
      switch (shaderType) {
        case 'OuO':
          Shader = this.gl.createShader(this.gl.VERTEX_SHADER);
          break;
        case ">w<":
          Shader = this.gl.createShader(this.gl.FRAGMENT_SHADER);
          break;
        default:
          return;
      }
      this.gl.shaderSource(Shader, shaderSource);
      this.gl.compileShader(Shader);
      if (this.gl.getShaderParameter(Shader, this.gl.COMPILE_STATUS)) {
        return Shader;
      } else {
        alert(this.gl.getShaderInfoLog(Shader));
      }
    }
    ["create_program"](_0x4d159e, _0x135a44) {
      const _0x171a80 = this.gl.createProgram();
      this.gl.attachShader(_0x171a80, _0x4d159e);
      this.gl.attachShader(_0x171a80, _0x135a44);
      this.gl.linkProgram(_0x171a80);
      if (this.gl.getProgramParameter(_0x171a80, this.gl.LINK_STATUS)) {
        this.gl.useProgram(_0x171a80);
        return _0x171a80;
      } else {
        alert(this.gl.getProgramInfoLog(_0x171a80));
      }
    }
    ["create_vbo"](_0xbcae1c) {
      const glBuffer = this.gl.createBuffer();
      this.gl.bindBuffer(this.gl.ARRAY_BUFFER, glBuffer);
      this.gl.bufferData(this.gl.ARRAY_BUFFER, new Float32Array(_0xbcae1c), this.gl.STATIC_DRAW);
      this.gl.bindBuffer(this.gl.ARRAY_BUFFER, null);
      return glBuffer;
    }
  }