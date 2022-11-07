int frame;
PImage[] images = new PImage [110]; //replace with total number of frames in sequence
PGraphics canvas;

void setup() {
  size(1080, 1080);
  frame = 0;
  canvas = createGraphics(1080, 1080);

  File folder = new File("/Users/jinggreen/Desktop/Shapes"); //create 'folder' from file path
  File[] listOfFiles = folder.listFiles(); //create array from 'folder'
  java.util.Arrays.sort(listOfFiles);  //sort 'folder' items by name
  
  int i = 0;
  for (File file : listOfFiles) {
    images[i] = loadImage(file.getName());
    i++;
  }
  
}


void draw() {

    canvas.beginDraw();
    
if(mousePressed) {  //progress animation on mousePressed
  if (frame<110) {
    canvas.image(images[frame],0,0);
    canvas.save(frame+".png");
    frame++;
  }
}
   
    canvas.endDraw();
    
   image(canvas,0,0);
   
}
