# Before contributing

## Code of Conduct

* We are committed to providing a friendly, safe and welcoming environment for
  all, regardless of level of experience, gender identity and expression,
  sexual orientation, disability, personal appearance, body size, race,
  ethnicity, age, religion, nationality, or other similar characteristic.
* Please be kind and courteous. There’s no need to be mean or rude.
* Respect that people have differences of opinion and that every design or
  implementation choice carries a trade-off and numerous costs. There is
  seldom a right answer.
* We will exclude you from interaction if you insult, demean or harass anyone.
  That is not welcome behaviour.
* Private harassment is also unacceptable. No matter who you are, if you feel
  you have been or are being harassed or made uncomfortable by a community
  member, please contact DrHenchman immediately. Whether you’re a regular
  contributor or a newcomer, we care about making this a safe place for you
  and we’ve got your back.
* Likewise any spamming, trolling, flaming, baiting, promotion or other
  attention-stealing behaviour is not welcome.

## Licensing

All contributions are made under the same AGPL 3.0 license as UHC Pack uses.
This license is used to ensure that UHC Pack remains free and open to use
for all. For more details on the license, refer to the [README](README.md)
and/or the [LICENSE file](LICENSE).

# Development

## Prerequisites

You will need to use a Unix compatible system such as:

* Linux
* MacOS
* Windows Subsystem for Linux (WSL)

You will also need the following command line tools:

* `jq` - https://stedolan.github.io/jq/
* `trash` - https://hasseg.org/trash/
* `java` - https://adoptopenjdk.net/

You should also have a working understanding about what a datapack is before
contibuting. The Minecraft wiki is a fantastic source of information on the
anatomy of a datapack and for reference documentation on command syntax.

## Datapack structure

At the heart of the datapack is a state machine to manage whether the UHC match
has started or not. Each part of the state of the state machine has its own
namespace for organisation

* `data/uhc_pack/functions/lobby` - Relating to the set up ahead of starting
  the UHC
* `data/uhc_pack/functions/starting` - The countdown before starting the UHC
  and the configuration of any initial game state
* `data/uhc_pack/functions/running` - For when the UHC is underway and any
  features which are  triggered during
* `data/uhc_pack/functions/awards` - After the UHC has ended, and rewards
  can be revealed

Other useful directories:

* `book/` - JSON files corresponding to the pages of the configuration book
  which can be assembled into a command. See the 'Building' section for more
  details

## Building

To ease maintenance of the configuration book, the books JSON text is separated
into separate files located within the `book/` directory. To generate the
function which gives the book to players, you'll need to execute the following
command:

    bin/generate.sh path/to/minecraft/world/datapacks/uhc-pack.zip

This command will not overwrite an existing zip file if it existings. To
change this default behaviour, you can use the `--overwrite` flag

    bin/generate.sh --overwrite path/to/minecraft/world/datapacks/uhc-pack.zip

Note, as of writing, this command currently assumes that you are using MacOS
and the `trash` command line utility tool

## Continuous Integration

A CI build is currently run for the `master` branch and all pull requests. This
runs a sanity check that the datapack loads without error on the most recent
version of Minecraft. To run the CI tests locally, you can use the following
command:

    bin/ci.sh
