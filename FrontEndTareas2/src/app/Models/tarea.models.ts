export class TareaModel {
    id: number;
    titulo: string | null;
    descripcion: string | null;
    estado: string | null;
    constructor(){
        this.id=0;
        this.titulo="";
        this.descripcion="";
        this.estado="";

    }
}