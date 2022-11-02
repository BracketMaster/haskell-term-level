{-# LANGUAGE FlexibleInstances, DeriveDataTypeable #-}
{-# OPTIONS_GHC -fwarn-name-shadowing -fwarn-missing-signatures #-}

module Id(Id) where

import Data.Generics

data IdProp
  = IdPCanFire |
    IdPWillFire |
    IdPProbe |
    IdPInternal |
    IdPReady |
    IdPGeneratedIfc |
    IdPMeth |
    IdPCommutativeTCon |
    IdPEnable |
    IdPKeep |
    IdPKeepEvenUnused |
    IdPRule |
    IdPSplitRule |
    IdPDict |
    IdPRenaming |
    IdPSuffixed |
    IdPSuffixCount Integer |
    IdPBadName |
    IdPFromRhs |
    IdPSigned |
    IdPNakedInst |
    IdPDisplayName String |
    IdPHide |
    IdPHideAll |
    IdPTypeJoin Id Id |
    IdPMethodPredicate |
    IdPInlinedPositions [Position] |
    IdPParserGenerated
  deriving (Eq,
            Ord,
            Show,
            Data.Generics.Data,
            Data.Generics.Typeable)

data Position = Position {
    pos_file :: !String,
    pos_line :: !Int,
    pos_column :: !Int,
    pos_is_stdlib :: !Bool
} deriving (Data.Generics.Data, Data.Generics.Typeable,Show, Eq, Ord)

data Id = Id { id_pos :: !Position,
               id_mfs :: !String,
               id_fs :: !String,
               id_props :: [IdProp] {- , id_stab :: Int -}
} deriving (Data.Generics.Data,Data.Generics.Typeable, Show, Eq, Ord)
