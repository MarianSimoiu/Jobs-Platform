const express = require('express');
const router = express.Router();

//Offer Model
const Offer = require('../../models/Offer');

router.get('/',(req,res) => {
    Offer.find()
        .sort({date: -1})
        .then(offers => res.json(offers))
});

router.post('/',(req,res) => {
    const newOffer =  new Offer({
        progLang: req.body.progLang
       /* workTime: req.body.workTime,
        location: req.body.location*/
    });
    newOffer.save().then(offer=>res.json(offer));
});

router.delete('/:id',(req,res) => {
    Offer.findById(req.params.id).then(offer =>
        offer.remove().then(()=>res.json({success:true})))
        .catch(err => res.status(404).json({success: false}));
});


module.exports = router;