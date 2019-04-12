# lodex-dumps

An ezmaster application to download LODEX exports and expose them on the web

## Settings

To add a simple N-Quads export, add a the URL of the dataset to export to the
`nquads` table of the `config.json`:

```json
{
    "nquads": [
        "https://inist-category.data.istex.fr/"
    ]
}
```

> **Note:**: it's important to let the `/` at the end of the URL.

## Contribution

To build the docker image locally:

```bash
make build
```

To debug locally:

```bash
make run-debug
```

## License

This software is under [CeCILL license](LICENSE). You can use, modify and/ or redistribute the software under the terms of the CeCILL license.

## Version

lodex-dumps:2.0.1
