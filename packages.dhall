let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.2-20190803/packages.dhall sha256:cf1acc1224e5b9fdd114fb085ee3ccc594622c2cdd25176c25dd9fdeff4f551c

in      upstream
    //  { bingsu =
            { dependencies =
                [ "node-sqlite3", "typelevel-prelude" ]
            , repo =
                "https://github.com/justinwoo/purescript-bingsu.git"
            , version =
                "v0.1.0"
            }
        , milkis = upstream.milkis // { version = "v7.2.1" }
        }
