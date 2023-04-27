#!/bin/bash
bindir=~/bin
$bindir/z3-c48dc6905 \
		smt.arith.solver=2 \
		-st \
		smt.auto_config=false \
		smt.random_seed=1 \
		smt.relevancy=2 \
		smt.arith.propagate_eqs=false \
		$1 \
	|grep -v '^unsupported' \
	|grep -v '; ignoring unsupported logic QF_UFDT.*'
