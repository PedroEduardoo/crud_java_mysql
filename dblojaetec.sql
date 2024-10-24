CREATE DATABASE dblojaetec;
Use dblojaetec;

CREATE TABLE Usuarios (
    iduser INT PRIMARY KEY AUTO_INCREMENT,
    usuarios VARCHAR(50) NOT NULL,
    fone VARCHAR(15),
    login VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(15) NOT NULL
);

-- Inserção de registros na tabela Usuarios
INSERT INTO Usuarios (usuarios, fone, login, senha) VALUES
('Pedro Eduardo', '61 98126-6093', 'Pedroeduardolwite@gmail.com', 'Pedroeduardo'),
('Mikael Dioge', '61 98332-5974', 'Mikaeldioge123@gmail.com', 'Mikaellll'),
('Kauan Reycon', '61 98137-4452', 'Kauanreycon24@gmail.com', 'Kauan12'),
('Geisiel Henrique', '61 4002-8922', 'Geisieldasprimas@gmail.com', 'Geisielp'),
('Juliana Santos', '61 98123-4567', 'JulianaSantos@gmail.com', 'Juliana123'),
('Lucas Almeida', '61 98234-5678', 'LucasAlmeida@gmail.com', 'Lucas123'),
('Ana Clara', '61 98345-6789', 'AnaClara@gmail.com', 'AnaClara123'),
('Bruno Silva', '61 98456-7890', 'BrunoSilva@gmail.com', 'Bruno123'),
('Fernanda Lima', '61 98567-8901', 'FernandaLima@gmail.com', 'Fernanda123'),
('Ricardo Ferreira', '61 98678-9012', 'RicardoFerreira@gmail.com', 'Ricardo123');
 CREATE TABLE Clientes (
 idCli int primary Key auto_increment,
 nomeCli Varchar(50) not null,
 endCli Varchar(100),
 foneCli Varchar(15) not null,
 emailCli varchar(50));
 
 insert into Clientes (nomeCli, endCli, foneCli, emailCli) values
('João Silva', 'Rua A, 123', '12345-6789', 'joao.silva@email.com'),
('Maria Oliveira', 'Avenida B, 456', '98765-4321', 'maria.oliveira@email.com'),
('Carlos Santos', 'Praça C, 789', '23456-7890', 'carlos.santos@email.com'),
('Ana Costa', 'Estrada D, 101', '34567-8901', 'ana.costa@email.com'),
('Ricardo Pereira', 'Rua E, 234', '45678-9012', 'ricardo.pereira@email.com'),
('Fernanda Lima', 'Avenida F, 567', '56789-0123', 'fernanda.lima@email.com'),
('Luiz Ferreira', 'Rua G, 890', '67890-1234', 'luiz.ferreira@email.com'),
('Patrícia Almeida', 'Praça H, 321', '78901-2345', 'patricia.almeida@email.com'),
('Eduardo Martins', 'Estrada I, 654', '89012-3456', 'eduardo.martins@email.com'),
('Juliana Rocha', 'Rua J, 987', '90123-4567', 'juliana.rocha@email.com');

-- Criação da tabela ordem_servico
CREATE TABLE ordem_servico (
    os INT PRIMARY KEY AUTO_INCREMENT,
    data_os TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    equipamento VARCHAR(150) NOT NULL,
    defeito VARCHAR(150) NOT NULL,
    servico VARCHAR(150),
    tecnico VARCHAR(30),
    valor DECIMAL(10, 2),
    idcli INT NOT NULL,
    FOREIGN KEY (idcli) REFERENCES clientes(idcli)
);

-- Inserção de 10 registros na tabela ordem_servico
INSERT INTO ordem_servico (equipamento, defeito, servico, tecnico, valor, idcli) VALUES
('Computador', 'Não liga', 'Reparo na fonte', 'Carlos', 150.00, 1),
('Impressora', 'Papel preso', 'Desbloqueio', 'Ana', 50.00, 2),
('Smartphone', 'Tela quebrada', 'Substituição da tela', 'Ricardo', 300.00, 3),
('Notebook', 'Bateria não carrega', 'Troca de bateria', 'Juliana', 200.00, 4),
('Monitor', 'Sem imagem', 'Verificação de conexões', 'Mikael', 75.00, 5),
('Mesa Digitalizadora', 'Drivers desatualizados', 'Atualização de drivers', 'Pedro', 100.00, 6),
('Câmera', 'Foco automático não funciona', 'Reparo no foco', 'Fernanda', 250.00, 7),
('Roteador', 'Conexão instável', 'Configuração do roteador', 'Luiz', 120.00, 8),
('Console de jogos', 'Não reconhece disco', 'Limpeza interna', 'Eduardo', 90.00, 9),
('Ar-condicionado', 'Não resfria', 'Revisão completa', 'Geisiel', 400.00, 10);





 
 