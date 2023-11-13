import { Component } from '@angular/core';
import { TareaService } from './Services/tarea.service';
import { TareaModel } from './Models/tarea.models';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'titulo modal';
  tareas: TareaModel[] = [];
  accion:number =0;
  tareaSeleccionaada: TareaModel= new TareaModel();


  myForm: FormGroup;


  constructor(
    private fb:FormBuilder,
    private _tareaService: TareaService

  ) {
    this.myForm = this.fb.group({
    id: [0,[Validators.required]],
    titulo: [null,[Validators.required]],
    descripcion: [null,[Validators.required]],
    estado: [null,[Validators.required]],
    });

  }

  ngOnInit(): void {
    console.log("inicio el evento");
    this.Listartareas();
  }

  Listartareas() {
    this._tareaService.ListarTodo().subscribe({
      next: (data: TareaModel[]) => {
        this.tareas = data;
      },
      error: (err) => { },
      complete: () => { }
    });
  }

  Nuevo() {
    this.accion = 1;
    this.title = " NUEVA TAREA"
    this.myForm.reset();
    this.myForm.get("id")?.setValue(0);
    //this.tareaSeleccionaada = new TareaModel();

  }

  Editar(obj: TareaModel) {
    this.accion = 2;
    this.title = "EDITAR TAREA"
    this.myForm.patchValue(obj);
    console.log("Editar ==>", obj);

  }

  Eliminar(id: number) {
    console.log("Eliminar id: ", id);

    this._tareaService.Eliminar(id).subscribe({
      next: (data: any) => {
        alert("Tarea eliminada de forma satisfactoria")
      },
      error: (err) => { },
      complete: () => {
        this.Listartareas();
      }
    });
  }
Cancelar() {
  this.accion= 0;
}

guardar() {

  console.log("capturando datos");
  this.tareaSeleccionaada = this.myForm.getRawValue();

  if(this.accion == 1) 
  {
    this.crearTarea();
  }

  if(this.accion == 2) 
  {
    this.actualizarTarea();
  }
}

crearTarea()
{
  this._tareaService.Crear(this.tareaSeleccionaada).subscribe({
    next: (data: TareaModel) => {
      alert("Tarea creada de forma satisfactoria");
    },
    error: (err) => { 
      alert("ERROR")
    },
    complete: () => {
      this.Listartareas();
      this.accion = 0;

     }
  });

}

actualizarTarea()
{
  this._tareaService.Actualizar(this.tareaSeleccionaada).subscribe({
    next: (data: TareaModel) => {
      alert("Tarea actualizada de forma satisfactoria");
    },
    error: (err) => { 
      alert("ERROR")
    },
    complete: () => { 
      this.Listartareas();
      this.accion = 0;
    }
  });

}

}
