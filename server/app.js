var io = require('socket.io').listen(2000);

var userlist = [{
    username: "shintaro",
    image_url: "https://github.com/identicons/jasonlong.png"
}, {
    username: "yuri",
    image_url: "https://github.com/identicons/jasonlong.png"
}, {
    username: "ryohei",
    image_url: "https://github.com/identicons/jasonlong.png"
}, ];

var questionList = [];

io.on('connect', function(socket) {
    socket.on('readUserList', function(data, fn) {
        // ignore data
        fn(userlist);
    });

    socket.on('authenticate', function(data, fn) {
        if (data.username) {
            for (var i = 0; i < userList.length; i++) {
                if (userList[i].username == data.username) {
                    fn({
                        "result": true,
                        "username": userList[i].username
                    });
                    return;
                }
            }
            fn({
                "result": false,
                "msg": "user not found"
            });
        }
    })

    socket.on('createQuestion', function(data, fn) {
        questionList.push(data);
        fn({
            "result": true,
            "questionList": questionList
        });
    })

    socket.on('readQuestionList', function(data, fn) {
        // ignore data
        fn({
            "result": true,
            "questionList": questionList
        });
    })

    socket.on('readQuestionDetail', function(data, fn) {
        if (data.questionId) {
            for (var i = 0; i < questionId.length; i++) {
                if (questionList[i].questionId == data.questionId) {
                    fn({
                        "result": true,
                        "question": questionList[i]
                    });
                    return;
                }
            }
            fn({
                "result": false,
                "msg": "question not found"
            });
        }
    });
})