//Configurações da corda
num_nodes = 80;           //Quantidade de pontos (segmentos) da linha
segment_length = 15;      //Distância que deve ser mantida entre cada ponto
grav = 0.2;               //Força da gravidade

//Arrays para guardar as posições atuais e anteriores de cada ponto
node_x = array_create(num_nodes, x);
node_y = array_create(num_nodes, y);
prev_x = array_create(num_nodes, x);
prev_y = array_create(num_nodes, y);

//Inicializando a posição de todos os pontos
for (var i = 0; i < num_nodes; i++) {
    node_x[i] = x;
    node_y[i] = y + (i * segment_length);
    prev_x[i] = node_x[i];
    prev_y[i] = node_y[i];
}