// Digital pins
const int SW_pin = 2;
const int X_pin = 0;

// Analog pins
const int Y_pin = 1;

void setup() {
  // put your setup code here, to run once:
  pinMode(SW_pin, INPUT);
  digitalWrite(SW_pin, HIGH);
  Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
  
  // For me
  //  Serial.print("X: ");
  //  Serial.print(analogRead(X_pin));
  //  Serial.print(" Y: ");
  //  Serial.print(analogRead(Y_pin));
  //  Serial.print(" Z: ");
  //  Serial.println(digitalRead(SW_pin));

  // For processing
  // "," is the limitor of data, "\n" means the end of the row of data
  Serial.print(analogRead(X_pin));
  Serial.print(",");
  Serial.print(analogRead(Y_pin));
  Serial.print(",");
  Serial.println(digitalRead(SW_pin));
  //delay(50);
}
