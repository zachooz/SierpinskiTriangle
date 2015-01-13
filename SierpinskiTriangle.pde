float theX;
float theY;
float rot = 0;
double theLength = 500;
boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false;
boolean bigger = false;
boolean smaller = false;
public void setup(){
	size(500,500);
	theX = width/2;
	theY = height/2;
}
public void draw(){
	if(right)
		theX+=5;
	if(left)
		theX-=5;
	if(up)
		theY-=5;
	if(down)
		theY+=5;
	if(bigger)
		theLength+=20;
	if(smaller)
		theLength-=20;
	if(theLength<100)
		theLength=100;
	background(0);
	rot+=.01;
	triangles(theX, theY, theLength);
	pushMatrix();
		translate(theX, theY);
		rotate(rot);
		triangles(0, 0, theLength);
	popMatrix();

	pushMatrix();
		translate(theX, theY);
		rotate(-rot);
		triangles(0, 0, theLength);
	popMatrix();
}
public void triangles(double x, double y, double l) {
	fill(255);
	noStroke();
	if(l>50){
		triangles(x-l/4, y+(l*(Math.sqrt(3)/8)), l/2);
		triangles(x+l/4, y+(l*(Math.sqrt(3)/8)), l/2);
		triangles(x, y-(l*(Math.sqrt(3)/8)), l/2);
	} else {
		triangle((float) x, (float) (y-((Math.sqrt(3)/4)*l)), (float) (x+l/2), (float) (y+((Math.sqrt(3)/4)*l)), (float) (x-l/2), (float) (y+((Math.sqrt(3)/4)*l)));

		stroke(5);
		fill(255);
		ellipse((float)x,(float)y+5,(float)(15),(float)(5));
		fill(0);
		ellipse((float)x,(float)y+5,(float)(5),(float)(5));	
	}
}

void keyPressed(){
	if (keyCode == UP || key == 'w') {
		up=true;
	} 

	if (keyCode == DOWN || key == 's') {
		down=true;
	} 

	if (keyCode == LEFT || key == 'a') {
		left=true;
	} 

	if (keyCode == RIGHT || key == 'd') {
		right=true;
	} 

	if (key == '.'){
		bigger=true;
	}
	if (key == ','){
		smaller=true;
	}
}
void keyReleased() {
	if (keyCode == UP || key == 'w') {
		up=false;
	} 

	if (keyCode == DOWN || key == 's') {
		down=false;
	} 

	if (keyCode == LEFT || key == 'a') {
		left=false;
	} 

	if (keyCode == RIGHT || key == 'd') {
		right=false;
	} 

	if (key == '.'){
		bigger=false;
	}
	if (key == ','){
		smaller=false;
	}
}