module.exports = function (passport) {
  const router = require('express').Router();
  const config = require("../lib/partial").partialConfig

  router.get("/", (req, res) => {
    if (req.user) {res.redirect("/")} // 로그인상태에서 로그인창 들오면 나가게함

    message = req.flash("error")
    config(req, res, "LoginPage", {
      isEmpty: true,
      message: message,
    }, true)
  })

  router.get("/temp",(req, res)=>{
    res.redirect("/login")
  })

  router.post('/process',
    passport.authenticate('local', {
      successRedirect: '/profile',
      failureRedirect: '/login/temp',
      failureFlash: true,
    })
  )

  return router;
}