# KaTeX.jl

A wrapper package around the [KaTeX Node.js package](https://www.npmjs.com/package/katex).

This was thrown together in a few minutes, so no guarantees about it being bug-free or even functional. 🤷

## Installation

From the Julia REPL, type `]` to enter the Pkg REPL, then run:

```text
add https://github.com/Hasnep/KaTeX.jl.git
```

Or run from the Julia REPL:

```julia
import Pkg
Pkg.add(url = "https://github.com/Hasnep/KaTeX.jl.git")
```

## Usage

KaTeX.jl exports one function called `render_katex` which converts a LaTeX string to an HTML string for use with KaTeX in the browser.
Because it calls JavaScript code, the input string needs to have special characters in JavaScript escaped, e.g. `\`, `$` and `{`.

## Example

```julia
using KaTeX

katex_string = raw"x = \\frac\{6\}\{8\}"

expected_output_html = raw"""
<span class="katex"><span class="katex-mathml"><math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><mi>x</mi><mo>=</mo><mfrac><mn>6</mn><mn>8</mn></mfrac></mrow><annotation encoding="application/x-tex">x = \frac{6}{8}</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="base"><span class="strut" style="height:0.4306em;"></span><span class="mord mathnormal">x</span><span class="mspace" style="margin-right:0.2778em;"></span><span class="mrel">=</span><span class="mspace" style="margin-right:0.2778em;"></span></span><span class="base"><span class="strut" style="height:1.1901em;vertical-align:-0.345em;"></span><span class="mord"><span class="mopen nulldelimiter"></span><span class="mfrac"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height:0.8451em;"><span style="top:-2.655em;"><span class="pstrut" style="height:3em;"></span><span class="sizing reset-size6 size3 mtight"><span class="mord mtight"><span class="mord mtight">8</span></span></span></span><span style="top:-3.23em;"><span class="pstrut" style="height:3em;"></span><span class="frac-line" style="border-bottom-width:0.04em;"></span></span><span style="top:-3.394em;"><span class="pstrut" style="height:3em;"></span><span class="sizing reset-size6 size3 mtight"><span class="mord mtight"><span class="mord mtight">6</span></span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height:0.345em;"><span></span></span></span></span></span><span class="mclose nulldelimiter"></span></span></span></span></span>
"""

@assert render_katex(katex_string) == expected_output_html
```
