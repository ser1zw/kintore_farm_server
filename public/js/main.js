function init() {
    setInterval(getCount, 1000);
}
function openTrainingPage() {
    var login_id = "muscle808";
    var url = "/start/" + login_id + "?dt=" + getTimestamp()
    window.open(url, "_blank");
}
function getCount() {
    $.ajax({
	type: "GET",
	url: "/count/" + login_id + "/" + datetime
    }).done(function(msg) {
	ret = JSON.parse(msg);
	if (ret && ret.count) {
	    document.getElementById("training_count").innerHTML = ret.count
	    document.title = ret.count
	}
    });
}

function getTimestamp() {
    var d = new Date();
    var datetime = d.getFullYear() +
	('0' + (d.getMonth() + 1)).slice(-2) +
	('0' + d.getDate()).slice(-2) +
	('0' + d.getHours()).slice(-2) +
	('0' + d.getMinutes()).slice(-2) +
	('0' + d.getSeconds()).slice(-2);
    return datetime;
}
function countUp() {
    var login_id = "muscle808";
    var datetime = getTimestamp();
    $.ajax({
	type: "POST",
	url: "/countup/" + login_id + "?dt=" + datetime
    });
}
