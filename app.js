const express = require('express');
const app = express();
const path = require('path')
var cookieParser = require('cookie-parser');

const apiRouter = require('./routes/index');

const port = 8080;

const getPath = (file) => {
  return path.join(__dirname + file);
}

app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(express.static('public'));
app.use(express.static('images')); // 사진 비교용
app.use(cookieParser());

app.use('/api', apiRouter)

app.post('/cookie', (req, res) => {
  const token = req.cookies.token;
  res.json({ login: (token ? token : null) });
})

app.get('/', (req, res) => {
  res.sendFile(getPath('/views/home.html'));
})

app.get('/login', (req, res) => {
  if (req.cookies.token) {
    return res.redirect('/');
  }
  res.sendFile(getPath('/views/signin.html'))
})

app.get('/signup', (req, res) => {
  res.sendFile(getPath('/views/signup.html'));
})

app.get('/signupnext', (req, res) => {
  res.sendFile(getPath('/views/validateProfile.html'));
})

app.get('/posts', (req, res) => {
  res.sendFile(getPath('/views/search_post.html'));
})

app.get('/posts/write', (req, res) => {
  if (!req.cookies.token) {
    return res.redirect('/login');
  }
  res.sendFile(getPath('/views/create_post.html'));
})

app.post('/sendImg', (req, res) => {
  let base64StringUploadImage = req.uploadImage; // upload사진 
  let base64StringPicture = req.pictureImage;    // 웹캡 사진 
  let base64UploadImage   = base64StringUploadImage.split(';base64,').pop(); 
  let base64PictureImage  = base64StringPicture.split(';base64,').pop(); 

  require("fs").writeFile("/images/upload.png", base64UploadImage, 'base64', function(err) {
    console.log(err);
  });
  require("fs").writeFile("/images/picture.png", base64PictureImage, 'base64', function(err) {
    console.log(err);
  });
})

app.listen(port, () => {
  console.log("start server");
});