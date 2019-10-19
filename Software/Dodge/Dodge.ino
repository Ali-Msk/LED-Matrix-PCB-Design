/* [Dodge.ino]
 * @author Ali Meshkat
 * @instructor Mr Gorigrov 
 * @Date June 17th, 2019
*/


//Shift Register Pins
#define serial 22 //data pin -SER
#define latch 28 //shift register clock pin-SRCLK
#define reset 26 //reset pin -SRCLR
#define clk 24 //storage register clock pin -RCLK

//buttons
#define btnSelectR 25
#define btnSelectL 27
#define btnRight 43
#define btnLeft 42
#define btnUp 44
#define btnDown 45

int period = 1000;
unsigned long time_now = 0;
int lineNum=0;
byte empty=0;

//data variable 
byte data[8]={
  B11111111,
  B11111111,
  B11111111,
  B11111111,
  B11111111,
  B11111111,
  B11111111,
  B11111110,
};



void setup() {
  Serial.begin(9800);
  DDRC = B11111111; //making the led grounds outputs
  
  //setting the shift register pins as outputs
  pinMode(serial,OUTPUT);
  pinMode(latch,OUTPUT);
  pinMode(reset,OUTPUT);
  pinMode(clk,OUTPUT);
  
  //setting the buttons as input devices
  pinMode(btnSelectR,INPUT_PULLUP);
  pinMode(btnSelectL, INPUT_PULLUP);
  pinMode(btnRight, INPUT_PULLUP);
  pinMode(btnLeft, INPUT_PULLUP);
  pinMode(btnUp, INPUT_PULLUP);
  pinMode(btnDown, INPUT_PULLUP);
  
  cli();                                // disable all interrupts
 
  TCCR1A = 0;                           // clear the two Timer/Counter Control Registers (TCR) for Timer1
  TCCR1B = 0;                           // 
  TCCR1B |= (1 << WGM12);               // turn on Clear Timer on Compare (CTC) mode
  TCCR1B |= (1 << CS12) | (1 << CS10);  // set CS12 and CS10 bits for prescaler_value = 1024
  
  TCNT1  = 0;                           // initialize the Timer/Counter value to 0
  OCR1A = 38;                        // set OCR = [ 16,000,000/1024 * 0.02 ] - 1 

  TIMSK1 |= (1 << OCIE1A);              // enable interrupts from Timer1 when TCNT1 reaches OCR1A value
  sei(); 
  
  //clear the shift register
  digitalWrite(reset,LOW);
  digitalWrite(reset,HIGH);

  //initializes rnadom number generater
  randomSeed(analogRead(0));
}

//)()()()())()()()()()()()()()())()()()()()()()()()()()()()()()()()()
void loop() {

  //checks whether the player has lost and the game is ogver 
  checkForLoss(data[6], data[7]);
  
  time_now = millis();//measures time for delay
  
  byte temp = randomRow(67);//randomly creates a new line 

  //shifts one right
  for (int i = 6; i > 0; i--){   
   data[i]= data[(i-1)];
  }

 //sets the new line 
  data[0] = temp;

  
  //while not time to move, input pins
  while(millis() < time_now + period){
    play(); //inputs the moves and processes them
  }

}

/*
 * Play 
 * Reads the button inputs from the user and 
 * movies the dot around 
 */
void play(){
  delay(130);
  if(!digitalRead(btnDown)){
    if(data[7] == 254)
      data[7] = 253;
    else if (data[7] == 253)
      data[7] = 251;
    else if (data[7] == 251)
      data[7] = 247;
    else if (data[7] == 247)
      data[7] = 239;
    else if (data[7] == 239)
      data[7] = 223;
    else if (data[7] == 223)
      data[7] = 191;
    else if (data[7] == 191)
      data[7] = 127;
  }else if(!digitalRead(btnUp)){
    if(data[7] == 127)
      data[7] = 191;
    else if (data[7] == 191)
      data[7] = 223;
    else if (data[7] == 223)
      data[7] = 239;
    else if (data[7] == 239)
      data[7] = 247;
    else if (data[7] == 247)
      data[7] = 251;
    else if (data[7] == 251)
      data[7] = 253;
   else if (data[7] == 253)
      data[7] = 254;
    Serial.println("Down");
  }
}

/*
 * randomRow
 * Creates a random row that will be given to the 
 * beginning of the display for the player to dodge 
 * @param int difficulty - ranges 0-100 and the higher the easier the game
 */
int randomRow(int difficulty){
  return chance(difficulty) * 1 + chance(difficulty) * 2 + chance(difficulty) * 4 + chance(difficulty) * 8 
  + chance(difficulty) * 16 + chance(difficulty) * 32 + chance(difficulty) * 64 + chance(difficulty) * 128;
}

/*
 * chance 
 * returns 1 or 0 based on the odds inputed 
 * @param int chance - from a 100, is the percent probablity of a 1
 */
int chance(int chance){
  int yes = 1, no = 0;
  int rando = random(100);
  if(rando <= chance){
    return yes;
  }else return no;
  
}

/*
 * checkForLoss 
 * checks whether the player lost in the prevoious rotation of the game 
 * if yes, will terminate the program, and displays to the serial 
 */
void checkForLoss(int first, int second){
  //does math to figure out if they collide
  byte firsts = 255 - first, seconds = log(255-second)/log(2); 
  if(first != 255){
    if(bitRead(firsts, seconds ) == 1){
      Serial.println("LOSSTTT");
      while(1){}
    }
  }
}

//___________________________________________________
//displays the data
ISR(TIMER1_COMPA_vect){ // Interrup Service Routine for Timer1 OCRA event

  boolean render;
  //checking if a render is needed
  if (lineNum == 0){
    render = 1;
  }else{
    render = 0;
  }
  
  //displaying the line
  digitalWrite(clk,LOW);
  digitalWrite(latch,LOW);
  digitalWrite(serial,render);
  PORTC = data[lineNum];
  digitalWrite(latch,HIGH);
  digitalWrite(clk,HIGH);
  

  if (lineNum==7){
    lineNum=0;
  }else{
  lineNum = lineNum + 1;
  }
}
