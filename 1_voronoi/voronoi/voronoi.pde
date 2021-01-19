


int point_number = 3; // int(random(5,20));
ArrayList<point2d> point_position; // Seed points for the diagram

void setup() {
    // Sets the screen to be 640 pixels wide and 360 pixels high
    size(640, 360);
    
    // Set the background to black and turn off the fill color
    background(0);
    noFill();
      
    point_position = new ArrayList<point2d>();
    println("Generating diagram with ", point_number, " points:");
    // Initialize coordinates of seed points
    for (int index = 0; index < point_number; index++)
    {
        point_position.add(new point2d(int(random(0,width)), int(random(0,height))));
        print("[",point_position.get(index).x,",",point_position.get(index).y,"] ");
    }
    println("Invoque setup");

    init_graph_voronoi(point_position);
}


void draw() {
    step_graph_voronoi();
    delay(50);
}
