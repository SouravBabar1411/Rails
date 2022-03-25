function selectAll() {
    let number = document.getElementsByName("number");
    let cityCheckLen = number.length;
    for (var x = 0; x < cityCheckLen; x++) {
        number[x].checked = true;
    }
}

function deselectAll() {
    let number = document.getElementsByName("number");
    let cityCheckLen = number.length;
    for (var x = 0; x < cityCheckLen; x++) {
        number[x].checked = false;
    }
}

function evenAll() {
    let number = document.getElementsByName("number");
    let cityCheckLen = number.length;
    for (var x = 1; x < cityCheckLen; x += 2) {
        number[x].checked = true;
    }
}

function oddAll() {
    let number = document.getElementsByName("number");
    let cityCheckLen = number.length;
    for (var x = 0; x < cityCheckLen; x += 2) {
        number[x].checked = true;
    }
}

function myChange() {
    console.log("hiii");
    var x = document.getElementById("car").value;
    document.getElementById("demo").innerHTML = "You selected: " + x;
}

function update() {
    var select = document.getElementById('language');
    var option = select.options[select.selectedIndex];

    document.getElementById('value').value = option.value;
}