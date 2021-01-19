

// Function overload to call euclidean distance by default
float distance(point2d in_p1, point2d in_p2)
{
    return distance("euclidean", in_p1, in_p2);
}

// Computes distance between two points with a given method
float distance(String method, point2d in_p1, point2d in_p2)
{
    if (method.equals("euclidean"))
    {
        return euclDistance(in_p1, in_p2);
    }    
    else if (method.equals("manhattan"))
    {
        return euclDistance(in_p1, in_p2);
    }
    else
    {
        println("ERROR in option provided to distance function");
        return 0.0;
    }
}

// Euclidean distance between two points
float euclDistance(point2d in_p1, point2d in_p2)
{
    return sqrt(pow((in_p1.x-in_p2.x),2) + pow((in_p1.y-in_p2.y),2));
}

// Manhattan distance between two points
float manhDistance(point2d in_p1, point2d in_p2)
{
    return abs(in_p1.x-in_p2.x) + abs(in_p1.y-in_p2.y);
}
