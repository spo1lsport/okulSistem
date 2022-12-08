using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using okulSistem.Data;
using okulSistem.Models;
using System.Linq;

namespace okulSistem.Controllers
{
    public class OgrenciDersController : Controller
    {
        private readonly AppDbContext _db;
        public OgrenciDersController(AppDbContext db)
        {
            _db = db;
        }
        public IActionResult Index()
        {
            IEnumerable<OgrenciDers> objOgrenciDersList = _db.OgrenciDers;
            return View(objOgrenciDersList);

        }
        public IActionResult Create() //GET
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(OgrenciDers obj) //POST
        {
            if (ModelState.IsValid)
            {
                var context = new AppDbContext();
                context.OgrenciDers.Add(obj);
                context.SaveChanges();
                TempData["success"] = "Category created succsessfully";
                return RedirectToAction("Index");
            }
            return View(obj);
        }
        //GET
        public IActionResult Edit(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }
            var OgrenciDersFromDB = _db.OgrenciDers.Find(id);

            if (OgrenciDersFromDB == null)
            {
                return NotFound();
            }

            return View(OgrenciDersFromDB);
        }

        //POST
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(OgrenciDers obj)
        {
            if (ModelState.IsValid)
            {
                var context = new AppDbContext();
                context.OgrenciDers.Update(obj);
                context.SaveChanges();
                TempData["success"] = "Category updated successfully";
                return RedirectToAction("Index");
            }
            return View(obj);
        }
        public IActionResult Delete(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }
            var OgrenciDersFromDB = _db.OgrenciDers.Find(id);

            if (OgrenciDersFromDB == null)
            {
                return NotFound();
            }

            return View(OgrenciDersFromDB);
        }

        //POST
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeletePOST(int? id)
        {
            var context = new AppDbContext();
            var b = context.Ders.FirstOrDefault(x => x.Id == id);
            context.Ders.Remove(b);
            context.SaveChanges();
            TempData["success"] = "Category deleted successfully";
            return RedirectToAction("Index");

        }

    }
}
