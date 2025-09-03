
# Global routing
global_connect
define_pdn_grid -name core
		
	
add_pdn_strip -grid core \
	-layer metal4 \
	-width 0.48 \
	-pitch 20 \
	-offset 6
add_pdn_connect -grid core \
		-layers {metal1 metal4}

pin_access -bottom_routing_layer $min_routing_layer \
  -top_routing_layer $max_routing_layer

set route_guide [make_result_file ${design}_${platform}.route_guide]
global_route -guide_file $route_guide \
  -congestion_iterations 100 -verbose
