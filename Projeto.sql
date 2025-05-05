SELECT
    v.id_venda,
    c.nome AS cliente,
    v.data_hora,
    p.nome AS produto,
    iv.quantidade,
    iv.preco_unitario,
    (iv.quantidade * iv.preco_unitario) AS total_item
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN itens_venda iv ON v.id_venda = iv.id_venda
JOIN produtos p ON iv.id_produto = p.id_produto
ORDER BY v.data_hora DESC;
