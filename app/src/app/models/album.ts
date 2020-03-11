import { Genero } from './genero';
import { Artista } from './artista';
import { Media } from './media';

export interface Album {
  id: number;
  title: string;
  gender: Genero;
  artist: Artista;
  tipo_media: Media;
  cover: string;
  price: number;
}

export interface AlbumResponse {
  total: number;
  itens: Album[];
}
