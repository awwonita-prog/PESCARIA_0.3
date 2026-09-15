// Verifica se os objetos existem para prender as pontas
var start_fixed = instance_exists(Obj_Hook);
var end_fixed = instance_exists(Obj_Point);
var last_node = num_nodes - 1; //Atalho para o último nó da corda

// Fixa o primeiro ponto no obj_hook (se ele existir)
if (start_fixed) {
    node_x[0] = Obj_Hook.x;
    node_y[0] = Obj_Hook.y;
}

// Fixa o último ponto no Obj_Point (se ele existir)
if (end_fixed) {
    node_x[last_node] = Obj_Point.x;
    node_y[last_node] = Obj_Point.y;
}

//Atualizar as posições (Física e Gravidade)
for (var i = 0; i < num_nodes; i++) { 
    
    //Se o ponto atual for a ponta 0 e estiver presa, ignora a física dele
    if (i == 0 && start_fixed) continue;
    
    //Se o ponto atual for a última ponta e estiver presa, ignora a física dele
    if (i == last_node && end_fixed) continue;
    
    var temp_x = node_x[i];
    var temp_y = node_y[i];
    
    var vx = node_x[i] - prev_x[i];
    var vy = node_y[i] - prev_y[i];
    
    node_x[i] += vx * 0.95;
    node_y[i] += vy * 0.95 + grav;
    
    prev_x[i] = temp_x;
    prev_y[i] = temp_y;
}

//Aplicar Restrições (Constraints)
var iterations = 10; 
for (var k = 0; k < iterations; k++) {
    for (var i = 0; i < num_nodes - 1; i++) {
        
        var dx = node_x[i + 1] - node_x[i];
        var dy = node_y[i + 1] - node_y[i];
        var dist = point_distance(node_x[i], node_y[i], node_x[i + 1], node_y[i + 1]);
        
        if (dist > 0) {
            var diff = segment_length - dist;
            var percent = diff / dist / 2;
            var offset_x = dx * percent;
            var offset_y = dy * percent;
            
            //Movemos o ponto atual se NÃO for o primeiro ponto preso
            if (!(i == 0 && start_fixed)) {
                node_x[i] -= offset_x;
                node_y[i] -= offset_y;
            }
            
            //Movemos o próximo ponto se NÃO for o último ponto preso
            if (!(i + 1 == last_node && end_fixed)) {
                node_x[i + 1] += offset_x;
                node_y[i + 1] += offset_y;
            }
        }
    }
}