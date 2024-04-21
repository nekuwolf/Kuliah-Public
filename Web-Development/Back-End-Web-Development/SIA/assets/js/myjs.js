function editUser(userId) {
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "components/formedit_users.php?id=" + userId, true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            document.getElementById("editFormContainer").innerHTML = xhr.responseText;
            document.getElementById("editTabText").style.display = "none";
        }
    };
    xhr.send();
}
