module KaTeX

import NodeJS

export render_katex

__init__() = run(`$(NodeJS.npm_cmd()) install katex`)

function render_katex(s)
    render_script = """
    const katex = require('katex');
    const result = katex.renderToString(`$s`, {throwOnError:false});
    console.log(result);
    """
   return read(`$(NodeJS.nodejs_cmd()) --eval "$render_script"`, String)
end

end # module
