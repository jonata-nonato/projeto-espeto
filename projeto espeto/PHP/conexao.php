<?php

    define ('Host','localhost');
    define ('Usuario','root');
    define ('Senha','');
    define ('BD','bdrestal');

    $conexao = mysqli_connect(Host, Usuario, Senha, BD) or die ("Não deu certo");
    //Lembrar de colocar Senha no Banco de dados
?>