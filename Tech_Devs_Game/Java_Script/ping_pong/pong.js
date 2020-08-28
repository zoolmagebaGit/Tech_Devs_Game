// select canvas
const cvs = document.getElementById("pong");
const ctx = cvs.getContext("2d");

// Draw rect Function
function drawRect(x, y, w, h, color) {
    ctx.fillStyle = color;
    ctx.fillRect(x, y, w, h);
}
//Create Net
const net =
{
    x: cvs.width / 2 - 1,
    y: 0,
    width: 2,
    height: 10,
    color: "WHITE"
}

//Draw Net
function drawNet() {
    for (let i = 0; i <= cvs.height; i += 15) {
        drawRect(net.x, net.y + i, net.width, net.height, net.color);
    }
}

// Draw Circle
function drawCircle(x, y, r, color) {
    ctx.fillStyle = color;
    ctx.beginPath();
    ctx.arc(x, y, r, 0, Math.PI * 2, false);
    ctx.closePath();
    ctx.fill();

}

// Detecting Contact the Object
function collision(b, p) {
    b.top = b.y - b.radius;
    b.bottom = b.y + b.radius;
    b.left = b.x - b.radius;
    b.right = b.x + b.radius;

    p.top = p.y;
    p.bottom = p.y + p.height;
    p.left = p.x;
    p.right = p.x + p.width;

    return b.right > p.left && b.bottom > p.top && b.left < p.right && b.top < p.bottom;
}

// Ball Resert
function resetBall() {
    ball.x = cvs.width / 2;
    ball.y = cvs.height / 2;

    ball.speed = 5;
    ball.velocityX = -ball.velocityX;
}

// UPdate movement of the ball
function update() {
    ball.x += ball.velocityX;
    ball.y += ball.velocityY;

    // AI Controler the computer paddle
    let computerLevel = 0.1;
    com.y += (ball.y - (com.y + com.height / 2)) * computerLevel;

    // Check if the ball hit the object
    if (ball.y + ball.radius > cvs.height || ball.y - ball.radius < 0) {
        ball.velocityY = -ball.velocityY;
    }

    let player = (ball.x < cvs.width / 2) ? user : com;
    if (collision(ball, player)) {
        ball.velocityX = -ball.velocityX;
        //Direction of the Hit Ball
        let direct = (ball.x < cvs.width / 2) ? 1 : -1;
        //Player hit the ball
        let touchPoint = (ball.y - (player.y + player.height / 2));

        //Default
        touchPoint = touchPoint / (player.height / 2);

        //Point calculate
        let PointAngle = touchPoint * Math.PI / 4;

        // Change X & Y Speed
        ball.velocityX = direct * ball.speed * Math.cos(PointAngle);
        ball.velocityY = direct * ball.speed * Math.sin(PointAngle);

        //Increment the speed when ball is touched
        ball.speed += 0.5;
    }

    //Score Update
    if (ball.x - ball.radius < 0) {
        com.score++;
        resetBall();
    }
    else if (ball.x + ball.radius > cvs.width) {
        user.score++;
        resetBall();
    }
}
// Draw Text
function drawText(text, x, y, color) {
    ctx.fillStyle = color;
    ctx.font = "45px fantasy";
    ctx.fillText(text, x, y);
}

//Control Paddle
cvs.addEventListener("mousemove", movePaddle);
function movePaddle(evt) {
    let rect = cvs.getBoundingClientRect();
    user.y = evt.clientY - rect.top - user.height / 2
}

// Create Player Paddle
const user =
{
    x: 0,
    y: cvs.height / 2 - 100 / 2,
    width: 10,
    height: 100,
    color: "White",
    score: 0
}

// Create Computer Paddle
const com =
{
    x: cvs.width - 10,
    y: cvs.height / 2 - 100 / 2,
    width: 10,
    height: 100,
    color: "Red",
    score: 0
}

// Create Ball
const ball =
{
    x: cvs.width / 2,
    y: cvs.height / 2,
    radius: 10,
    speed: 5,
    velocityX: 5,
    velocityY: 5,
    color: "Blue"
}

// Render the game
function render() {
    // Clear the canvas
    drawRect(0, 0, cvs.width, cvs.height, "BLACK");
    // Draw the net
    drawNet();
    // Draw Score
    drawText(user.score, cvs.width / 4, cvs.height / 5, "WHITE");
    drawText(com.score, 3 * cvs.width / 4, cvs.height / 5, "Red");
    //Draw Ball
    drawCircle(ball.x, ball.y, ball.radius, ball.color);
    //Draw Paddles
    drawRect(user.x, user.y, user.width, user.height, user.color);
    drawRect(com.x, com.y, com.width, com.height, com.color);

}

// Game init
function game() {
    update();
    render();
}

// Loop framework
const framePerSecond = 50;
setInterval(game, 1000 / framePerSecond);