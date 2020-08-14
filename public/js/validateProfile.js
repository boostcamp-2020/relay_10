let profileInput = document.getElementById("profile");

profileInput.addEventListener("change", (e) => {
  setThumbnail(e);
});

function setThumbnail(event) {
  let reader = new FileReader();

  reader.onload = function (event) {
    var profileImageDOM = document.getElementById("profile-image");
    
    profileImageDOM.src = event.target.result
    console.log(event.target.result);
  };
  reader.readAsDataURL(event.target.files[0]);
}
