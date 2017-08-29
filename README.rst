
==========
Hovercraft
==========

Hovercraft’s power comes from the combination of reStructuredText’s convenience with the cool of impress.js, together with a flexible and powerful solution to position the slides.

Sample pillars
==============

Simple documentation with local source

.. code-block:: yaml
parameters:
  hovercraft:
    server:
      slides:
        name_of_slides:
          builder: html
          path: source
          source: 
            engine: git
            address: git_address
            rev: master

Read more
=========

Documentation and Bugs
======================

To learn how to install and update salt-formulas, consult the documentation
available online at:

    http://hovercraft.readthedocs.io/

In the unfortunate event that bugs are discovered, they should be reported to
the appropriate issue tracker. Use Github issue tracker for specific salt
formula:

    https://github.com/salt-formulas/salt-formula-hovercraft/issues

For feature requests, bug reports or blueprints affecting entire ecosystem,
use Launchpad salt-formulas project:

    https://launchpad.net/salt-formulas

You can also join salt-formulas-users team and subscribe to mailing list:

    https://launchpad.net/~salt-formulas-users

Developers wishing to work on the salt-formulas projects should always base
their work on master branch and submit pull request against specific formula.

    https://github.com/salt-formulas/salt-formula-hovercraft

Any questions or feedback is always welcome so feel free to join our IRC
channel:

    #salt-formulas @ irc.freenode.net
