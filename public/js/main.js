var intervalFunctionId;

function init() {
    intervalFunctionId = setInterval(getCount, 1000);
}
function openTrainingPage() {
    var login_id = "muscle808";
    var url = "/start/" + login_id + "?dt=" + getTimestamp()
    window.open(url, "_blank");
}

function getPrize(prize_id) {
    var login_id = "muscle808";
    console.log("getPrize: " + prize_id);
    var json = { "login_id": login_id, "prize_id": prize_id };
    $.ajax({
	type: "POST",
	url: "/getprize",
	data: JSON.stringify(json)
    }).done(function(msg) {
	// console.log(msg);
	var ret = JSON.parse(msg);
	var message;
	if (ret.success) {
	    message = ret.message + "\n残り " + ret.user_point + " ポイント";
	} else {
	    message = ret.message;
	}
	alert(message);
    });
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
	    var remainingCount = target_count - ret.count;
	    document.getElementById("remaining_count").innerHTML = remainingCount;
	    if (remainingCount <= 0) {
		var msg = "目標回数に到達しました。\n" + obtained_point +" ポイントが加算されます。"
		    + "<a href=\"/prizes\">ポイント交換</a>";
		document.getElementById("result_message").innerHTML = msg;
		clearInterval(intervalFunctionId);
	    }
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
