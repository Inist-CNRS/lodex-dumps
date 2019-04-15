# lodex-dumps

An [ezmaster](https://github.com/Inist-CNRS/ezmaster) application to download
LODEX exports and expose them on the web.

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

List of usable exporters:

- `nquads`: N-Quads triples of all resources of a lodex (`.nq`)
- `extendednquads`: N-Quads containing triples linking lodex resources to ISTEX
  documents (`.nq`)
- `extendednquadscompressed`: N-Quads triples linking lodex resources to ISTEX
  documents, gzipped (`.nq.gz`)
- `atom`: Syndication feed of a LODEX (`.atom`)
- `csv`: Comma Separated Values of a lodex (`.csv`)
- `jsonallvalue`: JSON array of all resources of a lodex (`.json`)
- `jsonld`: [JSON-LD](https://json-ld.org/) triples of all resources of a lodex
  (`.json`)
- `jsonldcompacted`: Compacted JSON-LD triples of all resources of a lodex
  (`.json`)
- `tsv`: Tabulation Separated Values of a lodex (`.tsv`)
- `turtle`: [Turtle](https://en.wikipedia.org/wiki/Turtle_(syntax)) triples of
  all resources of a lodex (`.ttl`)

> **Note**: if the file already exists, it is not downloaded again.

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

This software is under [CeCILL license](LICENSE).
You can use, modify and/or redistribute the software under the terms of the
CeCILL license.

## Version

lodex-dumps:2.2.0
