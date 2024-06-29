package com.ERP.invOperativa;

import com.ERP.invOperativa.Entities.*;
import com.ERP.invOperativa.Enum.EstadoOrdenCompra;
import com.ERP.invOperativa.Repositories.*;
import com.ERP.invOperativa.Entities.Articulo;
import com.ERP.invOperativa.Entities.ArticuloProveedor;
import com.ERP.invOperativa.Entities.FamiliaArticulo;
import com.ERP.invOperativa.Entities.Proveedor;
import com.ERP.invOperativa.Repositories.ArticuloProveedorRepository;
import com.ERP.invOperativa.Repositories.ArticuloRepository;
import com.ERP.invOperativa.Repositories.FamiliaArticuloRepository;
import com.ERP.invOperativa.Repositories.ProveedorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import com.ERP.invOperativa.Repositories.ArticuloRepository;
import com.ERP.invOperativa.Repositories.VentaRepository;
import com.ERP.invOperativa.Services.VentaService;
import com.ERP.invOperativa.Entities.Articulo;
import com.ERP.invOperativa.Entities.DetalleVenta;
import com.ERP.invOperativa.Entities.Venta;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import static com.ERP.invOperativa.Enum.Modelo.Lote_fijo;


@SpringBootApplication
public class InvOperativaApplication {
	@Autowired
	private VentaService ventaService;

	@Autowired
	private ArticuloRepository articuloRepository;
	@Autowired

	private VentaRepository ventaRepository;
	public static void main(String[] args) {
		SpringApplication.run(InvOperativaApplication.class, args);
		System.out.println("Programa en Ejecucion");
		}


		};



