# Tika
Builds &amp; publishes to ghcr a container of Tika with additional OCR languages installed. Specifically Dutch, Swedish, Ukrainian, and Russian.


## Versioning schema:

Each tag is formatted `v<tika-version>-<repo-version>`.

Tika version is the base Tika version.
Repo version is bumped when the dockerfile is changed, except when this change is just to update tika itself.
