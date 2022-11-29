var express = require("express");
var router = express.Router();

var acertosController = require("../controllers/acertosController");

router.get("/ultimas/:idAquario", function (req, res) {
    acertosController.buscarUltimasMedidas(req, res);
});

router.get("/tempo-real/:idAquario", function (req, res) {
    acertosController.buscarMedidasEmTempoReal(req, res);
})

router.get("/buscarUltimaPontuacao/:fkUsuario", function (req, res) {
    acertosController.buscarUltimaPontuacao(req, res);
})

router.get("/buscarMediaUsuarios/:fkUsuario", function (req, res) {
    acertosController.buscarMediaUsuarios(req, res);
})
module.exports = router;