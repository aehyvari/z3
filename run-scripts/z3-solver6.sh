#!/bin/bash
bindir=$(cd $(dirname $0); pwd)
$bindir/z3-03bb04faf \
		smt.arith.solver=6 \
		-st \
		smt.auto_config=false \
		smt.random_seed=1 \
		smt.relevancy=2 \
		smt.arith.propagate_eqs=false \
		$1 \
	|grep -v '^unsupported' \
	|grep -v '; ignoring unsupported logic QF_UFDT.*'
