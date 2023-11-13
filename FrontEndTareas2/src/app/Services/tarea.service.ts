import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { TareaModel } from '../Models/tarea.models';


@Injectable({
  providedIn: 'root'
})
export class TareaService {

  private url: string = "https://localhost:7196/api/Tarea";
  constructor(
    private http: HttpClient
  ) { }


  ListarTodo(): Observable<TareaModel[]> {
    return this.http.get<TareaModel[]>(this.url);
  }

  ListarPorId(id: number) {

    return this.http.get(`${this.url}/${id}`);
  }

  Crear(request: TareaModel): Observable<TareaModel> {
    return this.http.post<TareaModel>(this.url, request);
  }

  Actualizar(request: TareaModel): Observable<TareaModel> {
    return this.http.put<TareaModel>(this.url, request);
  }

  Eliminar(id: number) {
    return this.http.delete(`${this.url}/${id}`);
  }




}