{- |
Copyright:  (c) 2016 Stephen Diehl
            (c) 2016-2018 Serokell
            (c) 2018-2019 Kowainik
License:    MIT
Maintainer: Kowainik <xrom.xkov@gmail.com>

This module reexports very basic and primitive functions and function combinators.
-}

module Relude.Function
       ( module Control.Arrow
       , module Control.Category
       , module Data.Function
       , identity
       ) where

import Control.Arrow ((&&&))
import Control.Category ((<<<), (>>>))
import Data.Function (const, fix, flip, id, on, ($), (&), (.))


-- $setup
-- >>> import Relude

{- | Renamed version of 'Prelude.id'.

>>> identity 10
10

>>> fmap identity [1,2,3]
[1,2,3]

-}
identity :: a -> a
identity = id
{-# INLINE identity #-}
