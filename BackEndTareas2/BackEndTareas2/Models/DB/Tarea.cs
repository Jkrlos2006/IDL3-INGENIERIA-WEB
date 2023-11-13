using System;
using System.Collections.Generic;

namespace BackEndTareas2.Models.DB;

public partial class Tarea
{
    public int Id { get; set; }

    public string? Titulo { get; set; }

    public string? Descripcion { get; set; }

    public string? Estado { get; set; }
}
