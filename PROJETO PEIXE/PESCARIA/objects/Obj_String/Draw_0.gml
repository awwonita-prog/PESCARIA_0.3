//Define a cor da linha
draw_set_color(c_white);

//Desenha linhas conectando cada nó ao próximo
for (var i = 0; i < num_nodes - 1; i++) {
    //Usamos draw_line_width e passamos a espessura (3) no final
    draw_line_width(node_x[i], node_y[i], node_x[i + 1], node_y[i + 1], 3);
    
}

//Reseta a cor de desenho (boa prática)
draw_set_color(c_white);