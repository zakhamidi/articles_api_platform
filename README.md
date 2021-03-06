# articles_api_platform
generating entities from database with doctrine and making an api platform symfony

# API Platform Core

API Platform Core is an easy to use and powerful system to create [hypermedia-driven REST](https://en.wikipedia.org/wiki/HATEOAS) and [GraphQL](https://graphql.org/) APIs.
It is a component of the [API Platform framework](https://api-platform.com) and it can be integrated
with [the Symfony framework](https://symfony.com) using the bundle distributed with the library.

It natively supports popular open formats including [JSON for Linked Data (JSON-LD)](https://json-ld.org), [Hydra Core Vocabulary](https://www.hydra-cg.com), [OpenAPI v2 (formerly Swagger) and v3](https://www.openapis.org), [HAL](https://tools.ietf.org/html/draft-kelly-json-hal-08) and [Problem Details](https://tools.ietf.org/html/rfc7807).

Build a working and fully-featured CRUD API in minutes. Leverage the awesome features of the tool to develop complex and
high performance API-first projects. Extend or override everything you want.

[![GitHub Actions](https://github.com/api-platform/core/workflows/CI/badge.svg?branch=main)](https://github.com/api-platform/core/actions?query=workflow%3ACI+branch%3Amain)
[![Codecov](https://codecov.io/gh/api-platform/core/branch/main/graph/badge.svg)](https://codecov.io/gh/api-platform/core/branch/main)
[![SymfonyInsight](https://insight.symfony.com/projects/92d78899-946c-4282-89a3-ac92344f9a93/mini.svg)](https://insight.symfony.com/projects/92d78899-946c-4282-89a3-ac92344f9a93)
[![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/api-platform/core/badges/quality-score.png?b=main)](https://scrutinizer-ci.com/g/api-platform/core/?branch=main)

## Documentation

The documentation of API Platform Core Library can be browsed [on the official website](https://api-platform.com/docs/core).

to istall api platform
>composer require api

to creat new data base
>bin/console doctrine:database:create
>bin/console doctrine:schema:create

to generate entities from DB
>php bin/console doctrine:mapping:import "App\Entity" annotation --path=src/Entity
>composer require symfony/maker-bundle --dev
>php bin/console make:entity --regenerate App

if you have enum in our DB
# config/packages/doctrine.yaml
doctrine:
    dbal:
        mapping_types:
            enum: string

update doctrine schema 
> php bin/console doctrine:schema:update --force

and add ( @ApiResource ) to our entities classes

you can run it with
>php -S 127.0.0.1:8000 -t public   
or
>symfony server/start 

