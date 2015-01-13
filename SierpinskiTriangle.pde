float rot = 0;

public void setup(){

	size(500,500);
	triangles(width/2, height/2, 500);

}
public void draw(){
	background(0);
	rot+=.01;
	triangles(width/2, width/2, 500);
	pushMatrix();
		translate(width/2, height/2);
		rotate(rot);
		triangles(0, 0, 500);
	popMatrix();

	pushMatrix();
		translate(width/2, height/2);
		rotate(-rot);
		triangles(0, 0, 500);
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
		ellipse((float)x,(float)y,(float)(10),(float)(5));
		fill(0);
		ellipse((float)x,(float)y,(float)(5),(float)(5));	
	}
}