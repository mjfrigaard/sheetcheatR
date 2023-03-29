<table>
<caption>Common aesthetic values.</caption>
<colgroup>
<col style="width: 6%" />
<col style="width: 17%" />
<col style="width: 76%" />
</colgroup>
<thead>
<tr class="header">
<th>Aesthetic</th>
<th>Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><code>color</code> or <code>fill</code></td>
<td><code>"red"</code> or <code>"#RRGGBB"</code></td>
<td>The <code>color</code> and <code>fill</code> can be set to a
variable or to a value. Values are provided as a string (in quotes). See
the <a
href="https://ggplot2-book.org/scale-colour.html?q=color#scale-colour">color
section of the <code>ggplot2</code> book</a>.</td>
</tr>
<tr class="even">
<td><code>linetype</code></td>
<td><code>integer</code> or <code>"string"</code></td>
<td><p>In <code>geom</code> functions with lines, we can adjust the type
of line using <code>linetype</code>.</p>
<p><code>0</code> = <code>"blank"</code></p>
<p><code>1</code> = <code>"solid"</code></p>
<p><code>2</code> = <code>"dashed"</code></p>
<p><code>3</code> = <code>"dotted"</code></p>
<p><code>4</code> = <code>"dotdash"</code></p>
<p><code>5</code> = <code>"longdash"</code></p>
<p><code>6</code> = <code>"twodash"</code></p>
<p>Read more about <code>linetype</code> in the <a
href="https://ggplot2-book.org/scale-other.html?q=linet#scale-linetype"><code>ggplot2</code>
text</a></p></td>
</tr>
<tr class="odd">
<td><code>lineend</code></td>
<td><code>"round"</code>, <code>"butt"</code>, or
<code>"square"</code></td>
<td>These aesthetics control the shape of the lines endings</td>
</tr>
<tr class="even">
<td><code>linejoin</code></td>
<td><code>"round"</code>, <code>"mitre"</code>, or
<code>"bevel"</code></td>
<td>When lines are used to join observations together, we can specify
how the joining line should look. Read more in the <a
href="https://ggplot2.tidyverse.org/articles/ggplot2-specs.html?q=colour#line-endjoin-paramters">ggplot2
book</a></td>
</tr>
<tr class="odd">
<td><code>size</code></td>
<td>integer (line width in mm)</td>
<td><code>size</code> can be set with an integer value (or as a
continuous variable).</td>
</tr>
<tr class="even">
<td><code>shape</code></td>
<td>integer/shape name or a single character (<code>"a"</code>)</td>
<td><code>0</code>-<code>25</code> are the acceptable integers.</td>
</tr>
</tbody>
</table>

Common aesthetic values.
