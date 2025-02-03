From Coq Require Lists.List.


Universe u_list.
Universe u_std.

Module ConstraintStdUniv.
  Definition split'@{u_test} (A B : Type@{u_list}) : list (A * B) -> list A * list B :=
    @Coq.Lists.List.split A B.
End ConstraintStdUniv.

Constraint u_std < u_list.
Constraint u_std < Datatypes.list.u0.
Constraint u_std < Datatypes.sum.u0.
Constraint u_std < Datatypes.sum.u1.
Constraint u_std < Datatypes.prod.u0.
Constraint u_std < Datatypes.prod.u1.
Constraint u_std < Datatypes.option.u0.
