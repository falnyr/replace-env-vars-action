# Replace env vars in file
Replaces `__TOKENS__` with environment variables in file.

## Usage
#### Inputs
- `filename` File for the replacement.

## Example
```yaml
uses: falnyr/replace-env-vars-action@master
env:
  FOO: foo
  BAR: bar
with:
  filename: /path/to/file
```
