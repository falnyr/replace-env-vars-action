# Replace env vars in file
Replaces Environment variables in file using gettext [envsubst](https://www.gnu.org/software/gettext/manual/html_node/envsubst-Invocation.html).

## Usage
#### Inputs
- `filename` File for the replacement.

## Example
```yaml
uses: falnyr/replace-environment-vars-action@master
env:
  FOO: foo
  BAR: bar
with:
  filename: /path/to/file
```
