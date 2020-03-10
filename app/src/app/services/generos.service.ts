import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { GeneroResponse } from '../models/genero';

@Injectable({
  providedIn: 'root'
})
export class GenerosService {
  private headers = new HttpHeaders({
    'Content-type': 'application/json'
  });

  constructor(
    private http: HttpClient
  ) { }

  getAll() {
    return this.http.get<GeneroResponse>(`${environment.apiUrl}/genders`, {headers: this.headers } );
  }

}
