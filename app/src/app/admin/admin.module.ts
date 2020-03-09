import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { BsDropdownModule } from 'ngx-bootstrap/dropdown';
import { TooltipModule } from 'ngx-bootstrap/tooltip';
import { NgxNavbarModule } from 'ngx-bootstrap-navbar';
import { PaginationModule } from 'ngx-bootstrap';

import { AdminHeaderComponent } from './admin-header/admin-header.component';
import { AdminPageComponent } from './admin-page/admin-page.component';
import { RouterModule } from '@angular/router';
import { AdminGenerosComponent } from './admin-generos/admin-generos.component';
import { AdminArtistasComponent } from './admin-artistas/admin-artistas.component';
import { AdminMidiasComponent } from './admin-midias/admin-midias.component';
import { AdminAlbunsComponent } from './admin-albuns/admin-albuns.component';



@NgModule({
  declarations: [AdminHeaderComponent, AdminPageComponent, AdminGenerosComponent, AdminArtistasComponent, AdminMidiasComponent, AdminAlbunsComponent],
  imports: [
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    BsDropdownModule.forRoot(),
    TooltipModule.forRoot(),
    PaginationModule.forRoot(),
    NgxNavbarModule,
    RouterModule
  ]
})
export class AdminModule { }
