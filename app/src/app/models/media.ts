export interface Media {
  id: number;
  description: string;
}

export interface MidiaResponse {
  total: number;
  itens: Media[];
}
