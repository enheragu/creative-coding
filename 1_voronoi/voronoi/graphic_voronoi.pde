
// Draws a Voronoi diagram just by expanding each point until the distance to the other node is the same

// Width left as frontier between
int frontier_width = 4;

color color_background = 0;
color color_expanding = 255;

String distance_method = "euclidean";

ArrayList<point2d> seed_position;
ArrayList<point2d> frontier_position;
ArrayList<node> currently_expanding;


// Overloaded funciton to use euclidean distance by default
void init_graph_voronoi(ArrayList<point2d> in_points)
{
    init_graph_voronoi(in_points, "euclidean");
}

// Init the voronoi graph with a set of points and optional colors. Resets global variables
void init_graph_voronoi(ArrayList<point2d> in_points, String in_distance_method)
{
    currently_expanding = new ArrayList<node>();
    frontier_position = new ArrayList<point2d>();

    seed_position = in_points;
    distance_method = in_distance_method;

    for (point2d point : seed_position)
    {
        currently_expanding.add(new node(point, color_expanding));  
    }
}

boolean step_graph_voronoi()
{
    int counter = 0;
    // println("[step_graph_voronoi] Step");
    ArrayList<node> new_expanding = new ArrayList<node>();
    for (node current : currently_expanding)
    {
        ArrayList<point2d> neighbours = current.getNeighbours();
        //println("Interation currently expanding with ",neighbours.size(), "neighbours");
        for (point2d neighbour : neighbours)
        {
            // println("Interation neighbours");
            new_expanding.add(new node(neighbour, color_expanding));
            counter++;
        }
    }
    currently_expanding.clear();
    currently_expanding = new_expanding;
    println("Iterated to build ", counter, " nodes");
    return true;
    //return false;
}
