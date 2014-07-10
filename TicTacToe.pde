int[][]board = {{-1, -1, -1}, {-1, -1, -1}, {-1, -1, -1}};
int rand = 0;


void setup()
{
  size(600, 600);
  background(0, 255, 0);
  line(200, 0, 200, 600);
  line(400, 0, 400, 600);
  line(0, 200, 600, 200);
  line(0, 400, 600, 400);
  noLoop();
}


void draw()
{
  rand = (int) random(1, 10);
  if (rand==1)
  {
    if(board[0][0]==0 || board[0][0]==1)
    {
        redraw();
    }
    else
    {
        line(0, 0, 200, 200);
        line(200, 0, 0, 200);
        board[0][0]=1;
    }
  }
  else if(rand==2)
  {
    if(board[1][0]==0 || board[1][0]==1)
    {
      redraw();
    }
    else
    {
      line(200, 0, 400, 200);
      line(400, 0, 200, 200);
      board[1][0]=1;
    }
  }
  else if(rand==3)
  {
    if(board[2][0]==0 || board[2][0]==1)
      redraw();
    else
    {
      line(400, 0, 600, 200);
      line(600, 0, 400, 200);
      board[2][0]=1;
    }
  }
  else if(rand==4)
  {
    if(board[0][1]==0 || board[0][1]==1)
    {
      redraw();
    }
    else
    {
      line(0, 200, 200, 400);
      line(200, 200, 0, 400);
      board[0][1]=1;
    }
  }
  else if(rand==5)
  {
    if(board[1][1]==0 || board[1][1]==1)
    {
      redraw();
    }
    else
    {
      line(200, 200, 400, 400);
      line(400, 200, 200, 400);
      board[1][1]=1;
    }
  }
  else if(rand==6)
  {
    if(board[2][1]==0 || board[2][1]==1)
    {
      redraw();
    }
    else
    {
      line(400, 200, 600, 400);
      line(600, 200, 400, 400);
      board[2][1]=1;
    }
  }
  else if(rand==7)
  {
    if(board[0][2]==0 || board[0][2]==1)
    {
      redraw();
    }
    else
    {
      line(0, 400, 200, 600);
      line(200, 400, 0, 600);
      board[0][2]=1;
    }
  }
  else if(rand==8)
  {
    if(board[1][2]==0 || board[1][2]==1)
    {
      redraw();
    }
    else
    {
      line(200, 400, 400, 600);
      line(400, 400, 200, 600);
      board[1][2]=1;
    }
  }
  else if(rand==9)
  {
    if(board[2][2]==0 || board[2][2]==1)
    {
      redraw();
    }
    else
    {
      line(400, 400, 600, 600);
      line(600, 400, 400, 600);
      board[2][2]=1;
    }
  }
}


void mouseClicked()
{
  ellipseMode(CORNER);
  fill(0, 255, 0);
  if (mouseX<200 && mouseY<200)
  {
    ellipse(0, 0, 200, 200);
    board[0][0]=0;
    redraw();
  }
  else if(mouseX>200 && mouseX<400 && mouseY<200)
  {
    ellipse(200, 0, 200, 200);
    board[1][0]=0;
    redraw();
  }
  else if(mouseX>400 && mouseY<200)
  {
    ellipse(400, 0, 200, 200);
    board[2][0]=0;
    redraw();
  }
  else if(mouseX<200 && mouseY>200 && mouseY<400)
  {
    ellipse(0, 200, 200, 200);
    board[0][1]=0;
    redraw();
  }
  else if(mouseX>200 && mouseX < 400 && mouseY>200 && mouseY<400)
  {
    ellipse(200, 200, 200, 200);
    board[1][1]=0;
    redraw();
  }
  else if(mouseX>400 && mouseY>200 && mouseY<400)
  {
    ellipse(400, 200, 200, 200);
    board[2][1]=0;
    redraw();
  }
  else if(mouseX<200 && mouseY>400)
  {
    ellipse(0, 400, 200, 200);
    board[0][2]=0;
    redraw();
  }
  else if(mouseX>200 && mouseX < 400 && mouseY>400)
  {
    ellipse(200, 400, 200, 200);
    board[1][2]=0;
    redraw();
  }
  else if(mouseX>400 && mouseY>400)
  {
    ellipse(400, 400, 200, 200);
    board[2][2]=0;
    redraw();
  }
}
