Chef Cookbook: New Relic System Monitor
=======================================
This simple cookbook installs the New Relic system monitor and the related PHP
agent on a Debian or Ubuntu machine.

Requirements
------------
The recipe of this cookbook has only been tested with Ubuntu. PHP needs to be
installed separately.

Attributes
----------
You'll need to set your New Relic licenses key through you attributes:

#### robertlemke-newrelic::default
<table>
	<tr>
		<th>Key</th>
		<th>Type</th>
		<th>Description</th>
		<th>Default</th>
	</tr>
	<tr>
		<td><tt>node['robertlemke-newrelic']['license_key']</tt></td>
		<td>String</td>
		<td>your license key</td>
		<td>abcdef1234abcdef1234abcdef1234abcdef1234</td>
	</tr>
</table>

Usage
-----
#### robertlemke-newrelic::default

Just define the attributes and then include `robertlemke-newrelic` in your node's
`run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[robertlemke-newrelic]"
  ]
}
```

License and Author
------------------
Copyright (c) 2013 Robert Lemke

Permission is hereby granted, free of charge, to any person obtaining a copy of this
software and associated documentation files (the "Software"), to deal in the
Software without restriction, including without limitation the rights to use, copy,
modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so, subject to the
following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
