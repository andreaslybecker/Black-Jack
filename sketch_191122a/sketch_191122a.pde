ArrayList<Kort> KortSpil = new ArrayList<Kort>();

String[] kuloer = {"spar", "kloer", "ruder", "hjerter"};
String[] vaerdiString = {"Es", "Konge", "Dame", "Jack", "10", "9", "8", "7", "6", "5", "4", "3", "2"};

ArrayList<Kort> SpillerKort = new ArrayList<Kort>();



ArrayList<Kort> DealerKort = new ArrayList<Kort>();
int vaerdi;
int vaerdier;

int points = 0;
int pointsDealer = 0;

int tabte = 0;
int vundet = 0;

void setup() {
  size(1320, 1000);
  SammensaetKort();
}

void keyPressed() {
  println(KortSpil.size());
  if (key == 'n') {
    Kort kort = KortSpil.get(int(random(0, KortSpil.size())));
    KortSpil.remove(kort);

    SpillerKort.add(kort);
  
  println("KORTSPIL #####################################");
  println(KortSpil);  
  println("SPILLER KORT ####################################");
  println(SpillerKort);
  println("POINT's #######################################");
  
  for(Kort k1 : SpillerKort){
    points = points + k1.valuePoint;
    
    if(points == 21){
      println("Du har fået BlackJack");
    }
    
    if(points > 21){
       println("Du har tabt");
       tabte = tabte + 1;
    }
    
  }
  
  println("Du" + " " + "har" + " " + points + " " + "point");
  
  }
  
  else if (key == 's') {
    Kort kort = KortSpil.get(int(random(0,KortSpil.size())));
    KortSpil.remove(kort);

    DealerKort.add(kort);
  }
  println("KORTSPIL #####################################");
  println(KortSpil);  
  println("SPILLER KORT ####################################");
  println(DealerKort);
  println("POINT's #######################################");
  
  for(Kort k2 : DealerKort){
    pointsDealer = pointsDealer + k2.valuePoint;
    
    if(pointsDealer == 21){
      println("Dealeren har fået BlackJack, du har tabt");
       tabte = tabte + 1;
    }
    
    if(pointsDealer > 21){
       println("Dealeren har trukket mere end 21, du har vundet");
       vundet = vundet + 1;
    }
    
    if(pointsDealer < 17){
       println("Dealeren SKAL trække hvis pointene er under 17");
    } 
    
    if(pointsDealer > points){
      tabte = tabte + 1;
    }
    
  }
  println("Dealeren" + " " + "har" + " " + pointsDealer + " " + "point");
  println("Du" + " " + "har" + " " + points + " " + "point");
  }



void SammensaetKort() {
  for (String k : kuloer) {
    for (String v : vaerdiString) {

      Kort kort = new Kort(k, v);

      KortSpil.add (kort);
    }
  }
}





void draw() {
  background(139, 69, 19);

  fill(0, 153, 0);
  rect(30, 30, 1260, 940);

  //Spillerens kort
  fill(255, 255, 255);
  rect(80, 620, 200, 300);

  rect(320, 620, 200, 300);

  rect(560, 620, 200, 300);

  rect(800, 620, 200, 300);

  rect(1040, 620, 200, 300);

  //Dealerens kort
  rect(80, 60, 200, 300);

  rect(320, 60, 200, 300);

  rect(560, 60, 200, 300);

  rect(800, 60, 200, 300);

  rect(1040, 60, 200, 300);

  //ScoreBoard
  fill(255, 215, 0);
  rect(500, 390, 320, 200);

  //Tekst i ScoreBoard
  fill(0);
  textSize(25);
  text("ScoreBoard", 590, 430);

  textSize(17);
  text("Dealers" + " " + "points" + ":" + pointsDealer, 520, 470);
  text("Spillerens" + " " + "points" + ":" + points, 520, 490);

  text("Antal" + " " + "gange" + " " + "vundet" + ":" + vundet, 520, 530);
  text("Antal" + " " + "gange" + " " + "tabt" + ":" + tabte, 520, 550);
  
  tegnKort();
}

void tegnKort(){
  if(SpillerKort.size() > 0){
    text(SpillerKort.get(0).toString(), 140, 200);
  }
  if(SpillerKort.size() > 1){
    text(SpillerKort.get(1).toString(), 400, 200);
  }
  if(SpillerKort.size() > 2){
    text(SpillerKort.get(2).toString(), 640, 200);
  }
  if(SpillerKort.size() > 3){
    println(SpillerKort.get(3));
  }
  if(SpillerKort.size() > 4){
    println(SpillerKort.get(4));
  }
    
}
