# ConsolidationCheck

This repo is for checking how protocol consolidation works,
esp. when using Reprise reloader in dev mode.

Since Elixir 1.2, protocols are also consolidated in dev environment
-- the one most often used by Reprise. Reprise 0.5.0 has a change allowing
beams from consolidated dirs to be reloaded as well.

This repo can be used for the following manual test:

* have `iex -S mix` running
* trigger Proto module loading by using it `Proto.fire(1)` or `l Proto`
* put some change into the Proto implementation, recompile
* see within `iex` if the module gets reloaded - it should print something
  like this:

    ```
    18:48:34.596 [info]  Reloaded modules: [Proto.Integer]
    ```
* run code again to see how it changed.

That's it.
