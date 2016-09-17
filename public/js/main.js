function init() {
    setInterval(getCount, 1000);
}
function getCount() {
    $.ajax({
	type: "GET",
	url: "/count/" + login_id + "/" + datetime
    }).done(function(msg) {
	ret = JSON.parse(msg);
	document.getElementById("training_count").innerHTML = ret.count
    });
}
