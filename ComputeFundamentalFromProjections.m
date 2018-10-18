%It Computes the fundamental matrix if the projection matrices are given.
function F=ComputeFundamentalFromProjections(P1,P2)
	e1=null(P1);
	e2=P2*e1;

	e2x=[0,-e2(3),e2(2);e2(3),0,-e2(1);-e2(2),e2(1),0];
	F=e2x*P2*pinv(P1);
end
