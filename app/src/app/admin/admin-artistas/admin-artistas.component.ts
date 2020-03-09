import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';

@Component({
  selector: 'app-admin-artistas',
  templateUrl: './admin-artistas.component.html',
  styleUrls: ['./admin-artistas.component.scss']
})
export class AdminArtistasComponent implements OnInit {
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
