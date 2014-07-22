window.onload = function () {
  console.log("js script starting")
	var t=setInterval(checkUpdatePage,1000);
}

function checkUpdatePage(){

}

/*
function checkUpdatePage(){
    console.log("checkUpdatePage beginning...");
    var form = document.createElement("form");
    form.setAttribute("method", "get");
    form.setAttribute("action", "http://lebook.herokuapp.com/pages/check");
    document.body.appendChild(form);
    form.submit(function(event) {
	    event.preventDefault();
	    var val = $(this).find('updated').val();
		console.log("checkUpdatePage return value:"+val);

		if(val){
			requestUpdatePage();
		}
	});
}


function requestUpdatePage(){
	var form = document.createElement("form");
    form.setAttribute("method", "get");
    form.setAttribute("action", "http://lebook.herokuapp.com/pages/show");
    document.body.appendChild(form);
    form.submit();
}
*/