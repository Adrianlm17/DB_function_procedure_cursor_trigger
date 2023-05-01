package edu.craptocraft.librerias.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import edu.craptocraft.librerias.entity.Libros;
import edu.craptocraft.librerias.service.LibrosService;

@RestController
@RequestMapping(path = "/api/v1/libros")
public class LibrosController {

    @Autowired
    private LibrosService librosService;

    @GetMapping
    public List<Libros> getAllLibros() {
        return librosService.getAllLibros();
    }

    @PostMapping
    public void saveUpdate(@RequestBody Libros libros) {
        librosService.saveLibro(libros);
    }

    @DeleteMapping("/{id}")
    public void deleteLibro(@PathVariable("id") Long id) {
        librosService.deleteLibro(id);
    }

    @GetMapping("/{id}")
    public Libros getLibroById(@PathVariable("id") Long id) {
        return librosService.getLibroById(id).get();
    }
}
