var db = require('./db');

module.exports = {


  allPosts: function(callbackFromController) {
    var sql = "SELECT * FROM post  INNER JOIN user ON post.userId = user.id ";

    db.execute(sql, [] ,function(result){
      callbackFromController(result);
    });
  },
  allComment: function(callbackFromController) {
    var sql = "SELECT * FROM comment";

    db.execute(sql, [] ,function(result){
      callbackFromController(result);
    });
  },
  new: function(newPost, callbackFromController) {
    var sql = "INSERT INTO post VALUES (?,?,?,?)";

    db.execute(sql, [newPost.postId,newPost.userId,newPost.topic,newPost.descr] ,function(result){
      callbackFromController(result);
    });
  },
  info: function(id, callbackFromController) {
    var sql = "SELECT * FROM post INNER JOIN user ON post.userId = user.id where postId=?";

    db.execute(sql, [id] ,function(result){
      callbackFromController(result);
    });
  },
  comment: function(id, callbackFromController) {
    var sql = "SELECT * FROM comment INNER JOIN user ON comment.uId = user.id where pId=?";

    db.execute(sql, [id] ,function(result){
      callbackFromController(result);
    });
  },

  postComment: function(comment, callbackFromController) {
    var sql = "INSERT INTO comment VALUES (null,?,?,?)";

    db.execute(sql, [comment.pId,comment.uId,comment.comment] ,function(result){
      callbackFromController(result);
    });
  },
  delete: function(id, callbackFromController) {
    var sql = "DELETE FROM post WHERE postId =?";

    db.execute(sql, [id] ,function(result){
      callbackFromController(result);
    });
  },
  postUpdate: function(id,updt, callbackFromController) {
    var sql = "UPDATE post SET topic=?,descr=? WHERE postId=?";

    db.execute(sql, [updt.topic,updt.descr,id ],function(result){
      callbackFromController(result);
    });
  },
  search: function(drop,search, callbackFromController) {
    if(drop == "author")
    var sql = "SELECT * FROM post  INNER JOIN user ON post.userId = user.id where user.fName LIKE ?";
    else if (drop == "topic")
    var sql = "SELECT * FROM post  INNER JOIN user ON post.userId = user.id where post.topic LIKE ?";
    else if (drop == "descr")
    var sql = "SELECT * FROM post  INNER JOIN user ON post.userId = user.id where post.descr LIKE ?";

    db.execute(sql, ['%' + search + '%'], function(result){
      callbackFromController(result);
    });
  },
};
