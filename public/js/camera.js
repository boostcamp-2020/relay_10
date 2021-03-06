const webcamElement = document.getElementById('webcam');
const canvasElement = document.getElementById('canvas');
const snapSoundElement = document.getElementById('snapSound');
const webcam = new Webcam(webcamElement, 'user', canvasElement, snapSoundElement);
webcam.start()
    .then(result => {
        console.log("webcam started");
    })
    .catch(err => {
        console.log(err);
    });
const sanping = function () {
    let picture = webcam.snap();
    console.log(picture);
    document.querySelector('#download-photo').href = picture;
    document.querySelector('#download-photo').download = "out.png";
}
function uploadImgPreview() {
    // @breif 업로드 파일 읽기
    let fileInfo = document.getElementById("upImgFile").files[0];
    let reader = new FileReader();
    // @details readAsDataURL( )을 통해 파일을 읽어 들일때 onload가 실행
    reader.onload = function () {
        // @details 파일의 URL을 Base64 형태로 가져온다.
        document.getElementById("thumbnailImg").src = reader.result;
        document.getElementById("thumbnailUrl").innerText = reader.result;
    };
    // @details onload 대신 addEventListener( ) 사용가능
    // reader.addEventListener("load", function() {
    //    document.getElementById("thumbnailImg").src = reader.result;
    //    document.getElementById("thumbnailUrl").innerText = reader.result;
    // }, false);
    if (fileInfo) {
        // @details readAsDataURL( )을 통해 파일의 URL을 읽어온다.
        reader.readAsDataURL(fileInfo);
    }
}