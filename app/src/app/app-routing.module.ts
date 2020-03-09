import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AdminPageComponent } from './admin/admin-page/admin-page.component';
import { AdminGenerosComponent } from './admin/admin-generos/admin-generos.component';
import { AdminArtistasComponent } from './admin/admin-artistas/admin-artistas.component';
import { AdminMidiasComponent } from './admin/admin-midias/admin-midias.component';
import { AdminAlbunsComponent } from './admin/admin-albuns/admin-albuns.component';


const routes: Routes = [
  { path: 'admin',
    component: AdminPageComponent,
    children: [
      { path: 'albuns' , component: AdminAlbunsComponent},
      { path: 'artistas', component: AdminArtistasComponent },
      { path: 'generos', component: AdminGenerosComponent },
      { path: 'midias' , component: AdminMidiasComponent }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
