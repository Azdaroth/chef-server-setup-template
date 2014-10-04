name              "monit_configs"
maintainer        "Karol Galanciak (Based on Ben Dixon's recipe. and ElasticSearch cookbook) (https://github.com/TalkingQuickly)"
maintainer_email  "karol.galanciak@gmail.com"
description       "Monit configs for server components"
version           "0.0.1"

recipe "monit_configs::postgres", "Monit config for Postgres"
recipe "monit_configs::postgres", "Monit config for ElasticSearch"

supports "ubuntu"
