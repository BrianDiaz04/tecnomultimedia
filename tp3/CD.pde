boolean perdiste=true;
void cD (float xPer, float yPer, float xEne, float yEne) {

  if (xEne  > X - tam1 && yEne > Y - tam2) {
    pushStyle();


    if (xEne > xPer-tam1 && xEne < xPer+tam2 && yEne > yPer-tam1 && yEne < yPer+tam2) {
      if (perdiste)pantalla=2;
      fill(255, 0, 0);

      rect(X, Y, tam1, tam2);
    }

    popStyle();
  }
}
