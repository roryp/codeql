...
throw ("my exception!",546); // BAD
...
throw errorFunc("my exception!",546); // GOOD 
...
std::runtime_error("msg error"); // BAD
...
throw std::runtime_error("msg error"); // GOOD
...