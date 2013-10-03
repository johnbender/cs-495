// FUNCTION SCOPED
// var x;   => x == undefined
// if( x == undefined ) { ... }
// foo + 1; => ReferenceError

function main(){
	var a = 1;

	{
		var a = 2;
		console.log( a );
	}

	console.log( a );
}

// CLEAR?
