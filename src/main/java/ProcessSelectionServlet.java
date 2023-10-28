import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ProcessSelectionServlet")
public class ProcessSelectionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final int N = 16;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get source and destination from the form
        String s = request.getParameter("source");
        String d = request.getParameter("destination");
        int source = Integer.parseInt(s);
        int destination = Integer.parseInt(d);
        int[][] graph = {
        		{0	   , 1710  , 11754 , 6731  , 2184  , 0     , 5863  , 10437 , 0	  , 4559  , 0	 , 0     , 3001 , 6148  , 5418  , 11141 },
        		{1710  , 0	   , 0	   , 8049  , 2696  , 0	   , 0	   , 12184 , 0	  , 3505  , 0	 , 0	 , 0	, 0	    , 0     , 0     },
        		{11754 , 0	   , 0	   , 5541  , 11005 , 10981 , 10878 , 0	   , 0	  , 8054  , 5763 , 7666	 , 0	, 6312  , 11841 , 3931  },
        		{6731  , 8049  , 8049  , 0	   , 5499  , 8156  , 9595  , 0	   , 9683 ,	2513  , 1246 , 9462	 , 9240	, 790	, 6844  , 7580  },
        		{2184  , 2696  , 11005 , 5499  , 0	   , 5847  , 7937  , 12046 , 7646 , 3009  , 5651 , 12220 , 5146	, 4768	, 3562  , 11739 },
        		{0	   , 0	   , 10981 , 10981 , 5847  , 0	   , 2092  , 8965  , 0	  , 7073  , 9209 , 0	 , 2333	, 0	    , 0	    , 0     },
        		{5863  , 0	   , 10878 , 9595  , 7937  , 2092  , 0	   , 7818  , 0	  , 8976  , 0	 , 0	 , 3662	, 0	    , 0	    , 7561  },
        		{10437 , 12184 , 0     , 0	   , 12046 , 8965  , 7818  , 0	   , 0	  , 0	  , 0	 , 0	 , 7790	, 0	    , 0	    , 4601  },
        		{0	   , 0     , 0	   , 9683  , 7646  , 0	   , 0	   , 0	   , 0	  , 8402  , 0	 , 6352	 , 0	, 9111	, 4100  , 0     },
        		{4559  , 3505  , 8054  , 2513  , 3009  , 7073  , 8976  , 0	   , 8402 ,	0	  , 2715 , 10552 , 7417	, 1761	, 4778  , 9623  },
        		{0	   , 0	   , 5763  , 1246  , 5651  , 9209  , 0	   , 0	   , 0	  , 2715  , 0	 , 8380	 , 0	, 1241  , 0     , 0     },
        		{0	   , 0	   , 7666  , 9462  , 12220 , 0	   , 0	   , 0	   , 6352 , 10552 , 8380 , 0	 , 0	, 9611  , 0     , 0     },
        		{3001  , 0	   , 0	   , 9240  , 5146  , 2333  , 3662  , 7790  , 0	  , 7417  , 0	 , 0	 , 0	, 0	    , 0	    , 0     },
        		{6148  , 0	   , 6312  , 790   , 4768  , 0	   , 0	   , 0	   , 9111 , 1761  , 1241 , 9611	 , 0	, 0	    , 0	    , 8312  },
        		{5418  , 0	   , 11841 , 6844  , 3562  , 0	   , 0	   , 0	   , 4100 , 4778  , 0	 , 0	 , 0	, 0	    , 0	    , 0     },
        		{11141 , 0	   , 3931  , 7580  , 11739 , 0	   , 7561  , 4601  , 0	  , 9623  , 0	 , 0	 , 0	, 8312  , 0     , 0     }
        		};
        int[][] matrix = {
        		{0	    , 5230	 , 156681 , 122505 , 17463  , 0      , 47306  ,	45074  , 0	    , 33158	 , 0	  , 0	   , 18075 , 83823  , 26923  , 223727 },
        		{5230	, 0	     , 0	  , 153782 , 25535  , 0      , 0      ,	55338  , 0	    , 72958	 , 0	  , 0	   , 0	   , 0	    , 0	     , 0      },
        		{156681	, 0	     , 0	  , 35364  , 49447  , 188494 , 75946  ,	0      , 0	    , 68665	 , 43506  , 35630  , 0	   , 63992  , 57505  , 25314  },
        		{122505	, 153782 , 35364  , 0	   , 65191  , 58028  , 123210 ,	0      , 142677	, 8194	 , 15145  , 75453  , 58103 , 9436   , 74808  , 64782  },
        		{17463	, 25535	 , 49447  , 65191  , 0	    , 73929  , 93708  ,	51591  , 57912	, 15782	 , 82311  , 114939 , 60906 , 50842  , 30571  , 155103 },
        		{0	    , 0	     , 188494 , 58028  , 73929  , 0	     , 29456  ,	45115  , 0	    , 100930 , 258887 , 0	   , 16516 , 0	    , 0	     , 0      },
        		{47306	, 0	     , 75946  , 123210 , 93708  , 29456  , 0      ,	59079  , 0	    , 85815	 , 0	  , 0	   , 14012 , 0	    , 0	     , 168012 },
        		{45074	, 55338	 , 0	  , 0	   , 51591  , 45115  , 59079  ,	0      , 0	    , 0	     , 0	  , 0	   , 51491 , 0	    , 0	     , 102619 },
        		{0	    , 0	     , 0	  , 142677 , 57912  , 0	     , 0      ,	0      , 0	    , 34270	 , 0	  , 99504  , 0	   , 50549  , 48469  , 0      },
        		{33158	, 72958	 , 68665  , 8194   , 15782  , 100930 , 85815  ,	0      , 34270	, 0	     , 26209  , 112748 , 52641 , 19534  , 58033  , 134000 },
        		{0	    , 0	     , 43506  , 15145  , 82311  , 258887 , 0      ,	0      , 0	    , 26209	 , 0	  , 82120  , 0	   , 6089   , 0      , 0      },
        		{0	    , 0	     , 35630  , 75453  , 114939 , 0	     , 0      ,	0      , 99504	, 112748 , 82120  , 0	   , 0	   , 151656 , 0      , 0      },
        		{18075	, 0	     , 0	  , 58103  , 60906  , 16516  , 14012  ,	51491  , 0	    , 52641	 , 0	  , 0	   , 0	   , 0	    , 0	     , 0      },
        		{83823	, 0	     , 63992  , 9436   , 50842  , 0	     , 0      ,	0      , 50549	, 19534	 , 6089	  , 151656 , 0	   , 0	    , 0	     , 67148   },
        		{26923	, 0	     , 57505  , 74808  , 30571  , 0	     , 0      ,	0      , 48469	, 58033	 , 0	  , 0	   , 0	   , 0	    , 0	     , 0      },      		
        		{223727	, 0	     , 25314  , 64782  , 155103 , 0	     , 168012 ,	102619 , 0	    , 134000 , 0	  , 0	   , 0	   , 67148  , 0      , 0      }
        	};

        // Calculate distance 
        
        List<List<Integer>> Routes = dijkstra(graph, matrix, source, destination);
        int numRoutes = Routes.size(); // Use size() to get the number of routes
        List<Integer> distances = Routes.get(numRoutes - 1);
        Routes.remove(distances);
        List<Integer> prices = Routes.get(numRoutes - 2);
        Routes.remove(prices);

        if (numRoutes > 0) { 
            for (int i = 0; i < numRoutes - 2; i++) { // Iterate through routes
                List<Integer> route = Routes.get(i);
                int distance = distances.get(i);
                // System.out.println("Shortest Route " + (i + 1) + ": " + route.toString() + " distance: " + distance);
            }
        } /* else {
            System.out.println("No routes found.");
        } */
        request.setAttribute("price", prices);
        request.setAttribute("distance", distances);
        request.setAttribute("dataArray", Routes);

        // Forward the request back to the JSP
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
    }

    // Replace this method with your actual distance computation logic
        public static List<List<Integer>> dijkstra(int[][] graph, int[][] matrix, int source, int destination) {
    	        int numNodes = graph.length;
    	        List<List<Integer>> shortestRoutes = new ArrayList<>();
    	        List<Integer> minDistances = new ArrayList<>();

    	        for (int routeCount = 0; routeCount < 3; routeCount++) { // Find 3 shortest routes
    	            int[] distances = new int[numNodes];
    	            int[] previousNodes = new int[numNodes];
    	            boolean[] visited = new boolean[numNodes];

    	            Arrays.fill(distances, Integer.MAX_VALUE);
    	            Arrays.fill(previousNodes, -1);

    	            distances[source] = 0;

    	            for (int i = 0; i < numNodes; i++) {
    	                int minDist = Integer.MAX_VALUE;
    	                int minNode = 0;

    	                for (int node = 0; node < numNodes; node++) {
    	                    if (!visited[node] && distances[node] < minDist) {
    	                        minDist = distances[node];
    	                        minNode = node;
    	                    }
    	                }

    	                if (minNode == -1) {
    	                    break;
    	                }

    	                visited[minNode] = true;

    	                for (int neighbor = 0; neighbor < numNodes; neighbor++) {
    	                    if (!visited[neighbor] && graph[minNode][neighbor] != 0) {
    	                        int alt = distances[minNode] + graph[minNode][neighbor];
    	                        if (alt < distances[neighbor]) {
    	                            distances[neighbor] = alt;
    	                            previousNodes[neighbor] = minNode;
    	                        }
    	                    }
    	                }
    	            }

    	            List<Integer> route = new ArrayList<>();
    	            int currentNode = destination;

    	            while (currentNode != -1) {
    	                route.add(currentNode);
    	                currentNode = previousNodes[currentNode];
    	            }

    	            Collections.reverse(route);
    	            shortestRoutes.add(route);

    	            // Store the minimum distance for this route
    	            minDistances.add(distances[destination]);

    	            // Mark the used edges in the matrix to find the next shortest route
    	            for (int i = 0; i < route.size() - 1; i++) {
    	                int u = route.get(i);
    	                int v = route.get(i + 1);
    	                graph[u][v] = graph[v][u] = 0;
    	            }
    	        }

    	        // Print the minimum distances
    	        /* for (int i = 0; i < 4; i++) {
    	            System.out.println("Minimum Distance " + (i + 1) + ": " + minDistances.get(i)); 
    	        } */

    	        List<Integer> minPrices = new ArrayList<>();
    	        for (int i = 0; i < shortestRoutes.size(); i++) {
    	            int price = 0;
    	            List<Integer> route = shortestRoutes.get(i);
    	            
    	            // Calculate the price for the current route
    	            for (int j = 0; j < route.size() - 1; j++) {
    	                int from = route.get(j);
    	                int to = route.get(j + 1);
    	                price += matrix[from][to];
    	            }
    	            
    	            minPrices.add(price);
    	        } 
    	        
    	        shortestRoutes.add(minPrices);
    	        shortestRoutes.add(minDistances);
    	        return shortestRoutes;
    	 }
}
