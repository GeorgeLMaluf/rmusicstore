import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';

@Component({
  selector: 'app-admin-albuns',
  templateUrl: './admin-albuns.component.html',
  styleUrls: ['./admin-albuns.component.scss']
})
export class AdminAlbunsComponent implements OnInit {

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
