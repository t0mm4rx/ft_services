class Particule {

  brightness = 1;
  dyingSpeed = Math.random() * 0.1 + 0.01;
  color = [155 + floor(Math.random() * 100), 155 + floor(Math.random() * 100), 155 + floor(Math.random() * 100)];
  position = [0, 0];
  speed = [(Math.random() - 0.5) * 3, (Math.random() - 0.5) * 3];
  onDie = null;
  id = Math.random();

  constructor(pos, onDie) {
    this.position = pos;
    this.onDie = onDie;
  }

  draw() {
    fill([this.color[0] * this.brightness, this.color[1] * this.brightness, this.color[2] * this.brightness]);
    ellipseMode(CENTER);
    ellipse(this.position[0], this.position[1], 10, 10);
    this.position[0] += this.speed[0];
    this.position[1] += this.speed[1];
    this.brightness -= this.dyingSpeed;
    if (this.brightness <= 0)
      this.onDie(this.id);
  }
}

let particules = [];

function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
}

function draw() {
  blendMode(BLEND);
  background(0);
  stroke(0);

  blendMode(DIFFERENCE);
  fill(255);
  ellipse(mouseX, mouseY, 20, 20);

  particules.forEach(p => p.draw());

  textAlign(CENTER, CENTER);
  fill(255);
  textSize(42);
  textFont("Inter");
  text("ft_services", width / 2, height/ 2);
  textSize(30);
  text("tmarx", width / 2, height/ 2 + 40);

  if (mouseIsPressed)
    particules.push(new Particule([mouseX, mouseY], id => {
      particules = particules.filter(p => p.id !== id);
    }));
}
