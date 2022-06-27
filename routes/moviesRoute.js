const express = require("express")
const { title } = require("process")
const {getAllMovies, addNewMovies, updateMovies, deleteMovies, searchMovie, sortMovie} = require('../controller/moviesController.js')
const router = express.Router()

router.use('/', (req, res, next)=> {
    if(req.query.title) {
        router.get('/', searchMovie)
        next()
    } else if (req.query.order) {
        router.get('/', sortMovie)
        next()
    } else {
        router.get('/', getAllMovies)
        next()
    }
})



router.post('/', addNewMovies)
router.patch('/:idMovie', updateMovies)
router.delete('/:idMovie', deleteMovies)



module.exports = router