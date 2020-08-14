
const fetch = require("node-fetch");
/*
* POST  /api/compareFace/upload
*/
// 사진 업로드 후 faceId 만들기
const upload = async (req, res) => {
    let imgURl = req.body.url;
    const result = await fetch('https://relay10.cognitiveservices.azure.com/face/v1.0/detect?returnFaceId=true&returnFaceLandmarks=false&recognitionModel=recognition_01&returnRecognitionModel=true&detectionModel=detection_01', {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "Ocp-Apim-Subscription-Key": "472d4e04944344b7bc93a4d87cd25046"
        },
        body: JSON.stringify({
            "url": imgURl
        })
    })
    const json = await result.json();
    if (json[0].faceId) {
        return res.status(200).json({ message: "success", faceId: json[0].faceId});
    } else {
        alert("사진 업로드 오류입니다.");
        return res.status(401).json({ message: "upload Error" });
    }
}

/*
* POST  /api/compareFace/similar
*/
// 업로드 한 두개의 이미지 유사도 분석
const similar =  async (req, res) => {
    let pic1 = req.body.pic1;
    let pic2 = req.body.pic2;
    const result = await fetch('https://relay10.cognitiveservices.azure.com/face/v1.0/findsimilars', {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "Ocp-Apim-Subscription-Key": "472d4e04944344b7bc93a4d87cd25046"
        },
        body: JSON.stringify({
            "faceId": pic1,
            "faceIds": [pic2],
            "mode": "matchPerson"
        })
    })
    const json = await result.json();
    if (json[0].faceId) {
        return res.status(200).json({ message: "success", result: json[0].confidence});
    } else {
        alert("얼굴 유사도 분석에 실패했습니다.");
        return res.status(401).json({ message: "similar check error" });
    }
}


module.exports = { upload, similar };