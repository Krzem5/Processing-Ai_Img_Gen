int SIZE=22;
int T_SIZE=25;
int M_T_SIZE=800;



void setup(){
	size(1080,1080);
}



void draw(){
	background(255,255,255);
	fill(0);
	textFont(createFont("consolas",M_T_SIZE));
	textAlign(CENTER,TOP);
	for (int x=-10;x<=10;x++){
		for (int y=-10;y<=10;y++){
			text("AI",width/2+x,height/2-textAscent()/2-textDescent()/2+y);
		}
	}
	PGraphics bpg=createGraphics(width,height);
	bpg.beginDraw();
	bpg.textFont(createFont("consolas",T_SIZE));
	bpg.noStroke();
	bpg.fill(#208318);
	for (int i=0;i<=width/SIZE;i++){
		for (int j=0;j<=height/SIZE;j++){
			bpg.text(random(1)<0.5?0:1,i*SIZE,j*SIZE);
		}
	}
	PGraphics pg=createGraphics(width,height);
	pg.beginDraw();
	pg.background(0,0);
	pg.noStroke();
	pg.fill(255);
	pg.textFont(createFont("consolas",M_T_SIZE));
	pg.textAlign(CENTER,TOP);
	pg.text("AI",width/2,height/2-pg.textAscent()/2-pg.textDescent()/2);
	pg.endDraw();
	bpg.mask(pg);
	bpg.endDraw();
	image(bpg,0,0);
	noLoop();
	saveFrame("data/img.png");
}
