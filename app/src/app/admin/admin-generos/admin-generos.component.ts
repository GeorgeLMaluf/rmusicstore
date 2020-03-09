import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { FormGroup, FormBuilder } from '@angular/forms';


@Component({
  selector: 'app-admin-generos',
  templateUrl: './admin-generos.component.html',
  styleUrls: ['./admin-generos.component.scss']
})
export class AdminGenerosComponent implements OnInit {
  formulario: FormGroup;

  constructor(
    private formBuilder: FormBuilder
  ) { }

  ngOnInit(): void {
    this.formulario = this.formBuilder.group({
      Buscar: ['']
    });
  }

}
