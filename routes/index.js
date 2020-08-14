const express = require('express');
const router = express.Router()


const postRouter = require('./api/posts/index');
const authRouter = require('./api/auth/index');
const compareRouter = require('./api/compareFace/index');

router.use('/posts', postRouter);
router.use('/auth', authRouter);
router.use('/compareFace', compareRouter);

module.exports = router;