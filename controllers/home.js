var express = require('express');
var router = express.Router();
var shortid = require('shortid');
var homeModel = require.main.require('./model/home-model');
var userModel = require.main.require('./model/user-model');


router.get('/', function(req, res){
	homeModel.allPosts(function(result){
		homeModel.allComment(function(comment){
		for (var i = 0; i < result.length; i++) {
			result[i].descr = result[i].descr.substr(0,300);
		} 
		res.render('home',{user : req.session.user,post : result,comment : comment});
	});
 });
});


router.post('/', function(req, res){
	homeModel.search( req.body.drop,req.body.search,function(result){
		res.render('home',{user : req.session.user,post : result});
 });
});

router.get('/new', function(req, res){
res.render('new',{user : req.session.user});
});

router.post('/new', function(req, res){
var	newPost ={
	postId:shortid.generate(),
	userId:req.session.user[0].id,
	topic : req.body.topic,
	descr :  req.body.descr
}
	homeModel.new(newPost , function(result){
		userModel.myPosts(req.session.user[0].id, function(post){
					req.session.myPosts = post;
		res.render('myPosts',{user : req.session.user,post : req.session.myPosts});
	});
});

});


router.get('/postsbyme', function(req, res){
		res.render('myPosts',{user : req.session.user,post : req.session.myPosts});
});

router.get('/post/:id', function(req, res){
		homeModel.info( req.params.id,function(result){
			homeModel.comment( req.params.id,function(comment){
		res.render('post',{user : req.session.user,post : result,comment : comment});
	});
});
});

router.get('/edit/:id', function(req, res){
		homeModel.info( req.params.id,function(result){
		res.render('editPost',{user : req.session.user,post : result});
});
});

router.get('/delete/:id', function(req, res){
		homeModel.info( req.params.id,function(result){
		res.render('deletePost',{user : req.session.user,post : result});
});
});

router.post('/post/:id', function(req, res){
	var comment ={
		pId:req.params.id,
		uId:req.session.user[0].id,
		comment:req.body.comment
	}
			homeModel.postComment( comment,function(none){
				homeModel.info( req.params.id,function(result){
					homeModel.comment( req.params.id,function(comment){
		res.render('post',{user : req.session.user,post : result,comment : comment});
			});
		});
	});
});

router.post('/delete/:id', function(req, res){
		homeModel.delete( req.params.id,function(result){
			userModel.myPosts(req.session.user[0].id, function(post){
						req.session.myPosts = post;
			res.render('myPosts',{user : req.session.user,post : req.session.myPosts});
		});
});
});

router.post('/edit/:id', function(req, res){
var	updt={
	topic : req.body.topic,
	descr :  req.body.descr
	}
			homeModel.postUpdate(req.params.id,updt,function(result){
				userModel.myPosts(req.session.user[0].id, function(post){
							req.session.myPosts = post;
				res.render('myPosts',{user : req.session.user,post : req.session.myPosts});
			});
});
});


router.get('/logout', function(req, res){
	req.session.destroy();
	res.redirect("/");
});

module.exports = router;
