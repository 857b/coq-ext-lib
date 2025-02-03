From ExtLib.Core Require Import Universes.
Require Import ExtLib.Structures.Monad.

Class MonadExc@{c d e | c < Universes.u_std, d < Universes.u_std, e < Universes.u_std}
  (E : Type@{e}) (m : Type@{d} -> Type@{c}) : Type@{max(c, e, d + 1)} :=
{ raise : forall {T : Type@{d}}, E -> m T
; catch : forall {T : Type@{d}}, m T -> (E -> m T) -> m T
}.

Arguments raise {E m mE} {_} _ : rename.
Arguments catch {E m mE} {_} _ _ : rename.
