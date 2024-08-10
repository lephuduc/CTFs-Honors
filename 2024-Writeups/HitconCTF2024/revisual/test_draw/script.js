window.addEventListener('load', init)

function init() {
    const canvas = document.getElementById('canvas')
    canvas.width = 650
    canvas.height = 650

    const gl = c.getContext('webgl') || c.getContext('experimental-webgl')

    gl.clearColor(0.0, 0.0, 0.0, 1.0)
    gl.clearDepth(1.0)
    gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT)

    // create vertex shader and fragment shader
    const v_shader = create_shader('vs')
    const f_shader = create_shader('fs')

    const prg = create_program(v_shader, f_shader)

    const attLocation = new Array(2)
    attLocation[0] = gl.getAttribLocation(prg, 'position')
    attLocation[1] = gl.getAttribLocation(prg, 'color')

    const attStride = new Array(2)
    attStride[0] = 3
    attStride[1] = 4

    const vertex_position = [
        0.0, 1.0, 0.0,
        1.0, 0.0, 0.0,
        -1.0, 0.0, 0.0
    ]

    const vertex_color = [
        1.0, 0.0, 0.0, 1.0,
        0.0, 1.0, 0.0, 1.0,
        0.0, 0.0, 1.0, 1.0
    ]

    const position_vbo = create_vbo(vertex_position)
    const color_vbo = create_vbo(vertex_color)

    gl.bindBuffer(gl.ARRAY_BUFFER, position_vbo)
    gl.enableVertexAttribArray(attLocation[0])
    gl.vertexAttribPointer(attLocation[0], attStride[0], gl.FLOAT, false, 0, 0)

    gl.bindBuffer(gl.ARRAY_BUFFER, color_vbo)
    gl.enableVertexAttribArray(attLocation[1])
    gl.vertexAttribPointer(attLocation[1], attStride[1], gl.FLOAT, false, 0, 0)

    const m = new matIV()

    const mMatrix = m.identity(m.create())
    const vMatrix = m.identity(m.create())
    const pMatrix = m.identity(m.create())
    const mvpMatrix = m.identity(m.create())

    m.lookAt([0.0, 1.0, 3.0], [0, 0, 0], [0, 1, 0], vMatrix)
    m.perspective(90, canvas.width / canvas.height, 0.1, 100, pMatrix)
    m.multiply(pMatrix, vMatrix, mvpMatrix)
    m.multiply(mvpMatrix, mMatrix, mvpMatrix)

    const uniLocation = gl.getUniformLocation(prg, 'mvpMatrix')

    gl.uniformMatrix4fv(uniLocation, false, mvpMatrix)
    gl.drawArrays(gl.TRIANGLES, 0, 3)
    gl.flush()

    // create shader function
    function create_shader(id) {
        let shader

        const scriptElement = document.getElementById(id)

        if (!scriptElement) { return; }

        switch (scriptElement.type) {

            case 'x-shader/x-vertex':
                shader = gl.createShader(gl.VERTEX_SHADER)
                break

            case 'x-shader/x-fragment':
                shader = gl.createShader(gl.FRAGMENT_SHADER)
                break
            default:
                return
        }

        gl.shaderSource(shader, scriptElement.text)
        gl.compileShader(shader)

        if (gl.getShaderParameter(shader, gl.COMPILE_STATUS)) {
            return shader
        } else {
            alert(gl.getShaderInfoLog(shader))
        }
    }

    // create program object and link shaders
    function create_program(vs, fs) {
        const program = gl.createProgram()

        gl.attachShader(program, vs)
        gl.attachShader(program, fs)
        gl.linkProgram(program)

        if (gl.getProgramParameter(program, gl.LINK_STATUS)) {
            gl.useProgram(program)
            return program
        } else {
            alert(gl.getProgramInfoLog(program))
        }
    }

    function create_vbo(data) {
        const vbo = gl.createBuffer()
        gl.bindBuffer(gl.ARRAY_BUFFER, vbo)
        gl.bufferData(gl.ARRAY_BUFFER, new Float32Array(data), gl.STATIC_DRAW)
        gl.bindBuffer(gl.ARRAY_BUFFER, null)
        return vbo
    }

};