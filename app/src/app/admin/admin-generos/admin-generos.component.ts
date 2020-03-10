import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Genero } from 'src/app/models/genero';
import { GenerosService } from 'src/app/services/generos.service';


@Component({
  selector: 'app-admin-generos',
  templateUrl: './admin-generos.component.html',
  styleUrls: ['./admin-generos.component.scss']
})
export class AdminGenerosComponent implements OnInit {
  formulario: FormGroup;
  generos: Genero[];
  total: number;


  constructor(
    private formBuilder: FormBuilder,
    private generoSrv: GenerosService
  ) { }

  ngOnInit(): void {
    this.formulario = this.formBuilder.group({
      Buscar: ['']
    });
    this.loadGeneros();
  }

  private loadGeneros()
  {
    this.generoSrv.getAll()
      .subscribe(response => {
        this.total = response.total;
        this.generos = response.itens;
      })
  }
}
