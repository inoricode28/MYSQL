CREATE DATABASE bdaltared;

USE bdaltared;

CREATE TABLE CATEGORIA (
    CODCATEGORIA        INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    NOMBRE              VARCHAR(255)    NOT NULL,
    ESTADO              TINYINT(1)      NOT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL
);

CREATE TABLE USUARIO (
    IDUSUARIO           INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    USUARIO             VARCHAR(255)    NOT NULL,
    PASSWORD            TINYBLOB        NOT NULL,
    ESTADO              TINYINT(1)      NOT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL
);

CREATE TABLE CLIENTE (
    ID                  INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    NOMBRE              VARCHAR(255)    NOT NULL,
    TELEFONO            VARCHAR(255)    NOT NULL,
    EMAIL               VARCHAR(255)    NOT NULL,
    DIRECCION           VARCHAR(255)    NOT NULL,
    ESTADO              TINYINT(1)      NOT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL,
    IDUSUARIO           INT             NOT NULL,
    FOREIGN KEY (IDUSUARIO) REFERENCES USUARIO(IDUSUARIO)
);

CREATE TABLE PEDIDO (
    IDPEDIDO            INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    CLIENTE_ID          INT             NOT NULL,
    FECHAENTREGA        VARCHAR(255)    NOT NULL,
    DIRECCION           VARCHAR(255)    NOT NULL,
    DESCRIPCION         VARCHAR(255)    NOT NULL,
    ESTADO              TINYINT(1)      NOT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL
);
CREATE TABLE PROVEEDORES (
    IDPROVEEDORES       INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    NOMBRE              VARCHAR(255)    NOT NULL,
    DIRECCION           VARCHAR(255)    DEFAULT NULL,
    RAZON               VARCHAR(255)    NOT NULL,
    ESTADO              TINYINT(1)      NOT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL
);

CREATE TABLE PRODUCTO (
    ID                  INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    CATEGORIA_ID        INT             NOT NULL,
    NOMBRE              VARCHAR(255)    NOT NULL,
    IDPROVEEDOR         INT             NOT NULL,
    MARCA               VARCHAR(100)    NOT NULL,
    MODELO              VARCHAR(50)     DEFAULT NULL,
    COLOR               VARCHAR(30)     DEFAULT NULL,
    COSTO               FLOAT           NOT NULL,
    PRECIO              FLOAT           NOT NULL,
    STOCK               INT             NOT NULL,
    ESTADO              TINYINT(1)      NOT NULL,
    DESCRIPCION         TEXT,
    IMAGEN              VARCHAR(255)    DEFAULT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL,
    FOREIGN KEY (CATEGORIA_ID) REFERENCES CATEGORIA(CODCATEGORIA),
    FOREIGN KEY (IDPROVEEDOR) REFERENCES PROVEEDORES(IDPROVEEDORES)
);

CREATE TABLE METODO_PAGO (
    IDMETODO_PAGO       INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    NOMBRE              VARCHAR(255)    NOT NULL,
    ESTADO              TINYINT(1)      NOT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL
);

CREATE TABLE VENTA (
    IDVENTA             INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    CLIENTE_ID          INT             NOT NULL,
    USUARIO_ID          INT             NOT NULL,
    IDPEDIDO            INT             NOT NULL,
    METODO_PAGO_ID      INT             NOT NULL,
    CODIGO              VARCHAR(255)    NOT NULL,
    PRECIO_TOTAL        DECIMAL(10,4)   NOT NULL,
    ESTADO              TINYINT(1)      NOT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL,
    FOREIGN KEY (CLIENTE_ID) REFERENCES CLIENTE(ID),    
    FOREIGN KEY (METODO_PAGO_ID) REFERENCES METODO_PAGO(IDMETODO_PAGO),
    FOREIGN KEY (IDPEDIDO) REFERENCES PEDIDO(IDPEDIDO)
);

CREATE TABLE PEDIDO_DETALLE (
    IDPEDIDO_DETALLE    INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    PEDIDO_ID           INT             NOT NULL,
    PRODUCTO_ID         INT             NOT NULL,
    CANTIDAD            INT             NOT NULL,
    PRECIO_UNITARIO     DECIMAL(10,4)   NOT NULL,
    FOREIGN KEY (PEDIDO_ID) REFERENCES PEDIDO(IDPEDIDO),
    FOREIGN KEY (PRODUCTO_ID) REFERENCES PRODUCTO(ID)
);

CREATE TABLE VENTA_DETALLE (
    IDVENTA_DETALLE     INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    VENTA_ID            INT             NOT NULL,
    PRODUCTO_ID         INT             NOT NULL,
    CANTIDAD            INT             NOT NULL,
    PRECIO_UNITARIO     DECIMAL(10,4)   NOT NULL,
    FOREIGN KEY (VENTA_ID) REFERENCES VENTA(IDVENTA),
    FOREIGN KEY (PRODUCTO_ID) REFERENCES PRODUCTO(ID)
);

CREATE TABLE CARRITO (
    IDCARRITO           INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    CLIENTE_ID          INT             NOT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL,
    FOREIGN KEY (CLIENTE_ID) REFERENCES CLIENTE(ID)
);

CREATE TABLE CARRITO_PRODUCTO (
    IDCARRITO_PRODUCTO  INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    CARRITO_ID          INT             NOT NULL,
    PRODUCTO_ID         INT             NOT NULL,
    CANTIDAD            INT             NOT NULL,
    FOREIGN KEY (CARRITO_ID) REFERENCES CARRITO(IDCARRITO),
    FOREIGN KEY (PRODUCTO_ID) REFERENCES PRODUCTO(ID)
);



CREATE TABLE ENVIO (
    IDENVIO             INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    VENTA_ID            INT             NOT NULL,
    DIRECCION           VARCHAR(255)    NOT NULL,
    FECHA_ENVIO         DATETIME        NOT NULL,
    ESTADO              TINYINT(1)      NOT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL,
    FOREIGN KEY (VENTA_ID) REFERENCES VENTA(IDVENTA)
);

CREATE TABLE DIRECCION (
    IDDIRECCION         INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    CLIENTE_ID          INT             NOT NULL,
    DIRECCION           VARCHAR(255)    NOT NULL,
    CIUDAD              VARCHAR(255)    NOT NULL,
    ESTADO              VARCHAR(255)    NOT NULL,
    CODIGO_POSTAL       VARCHAR(20)     NOT NULL,
    PAIS                VARCHAR(255)    NOT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL,
    FOREIGN KEY (CLIENTE_ID) REFERENCES CLIENTE(ID)
);

CREATE TABLE RESEÑA (
    IDRESEÑA            INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    PRODUCTO_ID         INT             NOT NULL,
    CLIENTE_ID          INT             NOT NULL,
    CALIFICACION        INT             NOT NULL,
    COMENTARIO          TEXT            NOT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL,
    FOREIGN KEY (PRODUCTO_ID) REFERENCES PRODUCTO(ID),
    FOREIGN KEY (CLIENTE_ID) REFERENCES CLIENTE(ID)
);

CREATE TABLE DESCUENTO (
    IDDESCUENTO         INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    NOMBRE              VARCHAR(255)    NOT NULL,
    DESCRIPCION         TEXT            NOT NULL,
    PORCENTAJE          DECIMAL(5,2)    NOT NULL,
    FECHA_INICIO        DATETIME        NOT NULL,
    FECHA_FIN           DATETIME        NOT NULL,
    ESTADO              TINYINT(1)      NOT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL
);

CREATE TABLE PRODUCTO_DESCUENTO (
    IDPRODUCTO_DESCUENTO INT            NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    PRODUCTO_ID         INT             NOT NULL,
    DESCUENTO_ID        INT             NOT NULL,
    FOREIGN KEY (PRODUCTO_ID) REFERENCES PRODUCTO(ID),
    FOREIGN KEY (DESCUENTO_ID) REFERENCES DESCUENTO(IDDESCUENTO)
);

CREATE TABLE WISHLIST (
    IDWISHLIST          INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    CLIENTE_ID          INT             NOT NULL,
    NOMBRE              VARCHAR(255)    NOT NULL,
    CREATEDAT           DATETIME        NOT NULL,
    UPDATEDAT           DATETIME        NOT NULL,
    FOREIGN KEY (CLIENTE_ID) REFERENCES CLIENTE(ID)
);

CREATE TABLE WISHLIST_PRODUCTO (
    IDWISHLIST_PRODUCTO INT             NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    WISHLIST_ID         INT             NOT NULL,
    PRODUCTO_ID         INT             NOT NULL,
    FOREIGN KEY (WISHLIST_ID) REFERENCES WISHLIST(IDWISHLIST),
    FOREIGN KEY (PRODUCTO_ID) REFERENCES PRODUCTO(ID)
);

CREATE TABLE HISTORIAL_PRODUCTO (
    IDHISTORIAL_PRODUCTO INT            NOT NULL        AUTO_INCREMENT PRIMARY KEY,
    PRODUCTO_ID         INT             NOT NULL,
    CAMBIO              TEXT            NOT NULL,
    FECHA               DATETIME        NOT NULL,
    FOREIGN KEY (PRODUCTO_ID) REFERENCES PRODUCTO(ID)
);

