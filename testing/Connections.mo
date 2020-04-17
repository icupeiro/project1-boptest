package Connections 
  function root "Define a root" 
    input AnyType x "The root node";
  external "builtin";
    annotation (Documentation(info="<html>
Defines an unconditional <b>root node</b> in a virtual connection graph.
<h4>Example</h4>
<pre>Connections.root(A.R); </pre>
 
The overdetermined type or record instance R in connector instance A is a
(definite) root node in a virtual connection graph.
</html>"));
  end root;

  function branch "Define a non-breakable branch" 
    input AnyType x "Connect from";
    input AnyType y "Connect to";
    annotation (Documentation(info="<html>
Defines a <b>non-breakable branch</b> between the overdetermined connectors (<b>breakable</b> branches are introduced with connect).
<h4>Example</h4>
<pre>Connections.branch(A.R, B.R);</pre>
Defines a non-breakable branch from the overdetermined type or record
instance R in connector instance A to the corresponding overdetermined
type or record instance R in connector instance B for a virtual connection
graph.
<br/>
This function can be used where a connect-statement is allowed.
</html>"));
  external "builtin";
  end branch;

  function potentialRoot 
    input AnyType x "Potential root";
    input Integer priority=0 "Lowest priority is selected first";
    annotation (Documentation(info="<html>
Defines a potential root (with optional priority).
<h4>Example</h4>
<pre>
Connections.potentialRoot(A.R);
Connections.potentialRoot(A.R, priority = p);
</pre>
The overdetermined type or record instance R in connector instance A is a
<b>potential root node</b> in a virtual connection graph with given priority p (p &ge; 0), 
default zero. The higher the given priority the less desirable the potential root.
The priority-argument shall be a
parameter expression of type Integer (and cannot be changed after translation). 
In a virtual connection subgraph
without a Connections.root definition, one of the potential roots with the
lowest priority number is selected as root.
</html>"));
  external "builtin";
  end potentialRoot;

  function uniqueRoot 
    input AnyType root "unique root";
    input String message="";
  external "builtin";
  end uniqueRoot;

  function uniqueRootIndices 
    input AnyType roots;
    input AnyType nodes;
    output AnyType rootIndices;
  external "builtin";
  end uniqueRootIndices;

  function isRoot 
    input AnyType x "Potential root";
    output Boolean b "Is it a root";
  external "builtin";
    annotation (Documentation(info="<html>
Returns true if the (potential) root is actually chosen a root.
<h4>Example</h4>
<pre>
b = Connections.isRoot(A.R); 
</pre> Returns true, if the overdetermined type or record instance R in connector
instance A is selected as a root in the virtual connection graph.
This is normally used to add the equations defining the root.
</html>"));
  end isRoot;
  
  function rooted
    input AnyType x;
    output Boolean b;
  external "builtin";
    annotation (Documentation(info="<html>
	If the operator Connections.rooted(A.R) is used,
	then there must be exactly one statement Connections.branch(A.R,B.R) involving A.R
	(the argument of Connections.rooted must be the first argument of Connections.branch).
	In that case Connections.rooted(A.R) returns true,
	if A.R is closer to the root of the spanning tree than B.R;
	otherwise false is returned.
</html>"));
  end rooted;
end Connections;
