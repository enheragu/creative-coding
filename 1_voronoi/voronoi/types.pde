
// Base point class to use
public class point2d 
{
    public int x;
    public int y;
    point2d(int in_x, int in_y) { x = in_x; y = in_y; }
}

// Node with position, color and helper methods
public class node
{
    color _color;
    point2d _coordinates;
    node(point2d in_coord, color in_color)
    { 
        _coordinates = in_coord; 
        _color = in_color;

        stroke(_color);
        point(_coordinates.x, _coordinates.y);
        //println("[node] Create new node in (", _coordinates.x,",", _coordinates.y,").");
    }
    
    // Returns list of surroinding neighbours that are not already coloured and are inside the window
    ArrayList<point2d> getNeighbours()
    {
        ArrayList<point2d> ret_points = new ArrayList<point2d>();
        for(int x = -1; x <= 1; x++)
        {
            for(int y = -1; y <= 1; y++)
            {
                if (y == 0 && x == 0) continue;
                point2d new_coord = new point2d(_coordinates.x + x, _coordinates.y + y);
                //println("Check neighbour (", new_coord.x,",", new_coord.y,").");
                if (x < width && y < height && get(x,y) != _color)
                {
                    //println("Add neighbour (", new_coord.x,",", new_coord.y,").");
                    ret_points.add(new_coord);
                }
            }
        }
        return ret_points;
    }
}
