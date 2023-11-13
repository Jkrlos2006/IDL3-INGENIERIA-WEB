using System.Threading;
using BackEndTareas2.Models.DB;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BackEndTareas2.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TareaController : ControllerBase
    {
        DbtareaContext db = new DbtareaContext();

        [HttpGet]
        public IActionResult ListarTodo()
        {
            List<Tarea> tareas = db.Tareas.ToList();
            return Ok(tareas);
        }

        [HttpGet("{id}")]
        public IActionResult ObtenerPorId(int id)
        {
            Tarea tarea = db.Tareas.Find(id);
            return Ok(tarea);
        }

        [HttpPost]
        public IActionResult Crear([FromBody] Tarea request)
        {
            db.Tareas.Add(request);
            db.SaveChanges();
            return Ok(request);
        }


        [HttpPut]
        public IActionResult Actualizar([FromBody] Tarea request)
        {
            db.Tareas.Update(request);
            db.SaveChanges();
            return Ok(request);
        }


        [HttpDelete("{id}")]
        public IActionResult EliminarPorId(int id)
        {
            Tarea tarea = db.Tareas.Find(id);
            db.Tareas.Remove(tarea);
            db.SaveChanges();
            return Ok(tarea);
        }
    }
}

