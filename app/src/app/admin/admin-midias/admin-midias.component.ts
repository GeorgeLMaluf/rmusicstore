import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';

@Component({
  selector: 'app-admin-midias',
  templateUrl: './admin-midias.component.html',
  styleUrls: ['./admin-midias.component.scss']
})
export class AdminMidiasComponent implements OnInit {

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
