const router = require('express').Router();
const fs = require("fs")
const db = require("../data/mariaDBdatabase");
const axios = require('axios')
// image upload
const multer = require("multer");
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'public/uploads/')
    },
    filename: (req, file, cb) => {
        cb(null, file.originalname)
    }
})
const upload = multer({ storage: storage, limits: { fileSize: 3 * 1024 * 1024 } })

router.get("/", async (req, res) => {
    var count = await db.getCount("UPLOADIMG", "dataset", "id")
    console.log(count[0].ctd);

})

router.post("/",
    // upload.single("image"),
    async (req, res) => {
        var id = 'asdfasdf'//req.body.id
        var origin = req.body.origin
        var convert = req.body.convert
        var dataset = `${origin}2${convert}`
        var count = await db.getCount("UPLOADIMG", dataset, id)
        var filename = `${id}_${dataset}_${count[0].ctd}`
        // try{
        //     db.insertRow("UPLOADIMG", [count, id, filename, dataset])
        //     fetch(`http://localhost:9889/convert?dataset=${dataset}&imgname=${filename}`, { method: "get" })

        // }
        // catch (err) {if (err) console.error(err);}


        // var filenumber =await db.getMaxCount()
        res.send({ 'asdf': 'asdf' })
        console.log(filename)
    })
// --> image upload



router.get('/', function (req, res) {
    res.send({ hi: "HI" })
});

module.exports = router;
