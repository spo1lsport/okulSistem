using Microsoft.AspNetCore.Mvc;
using okulSistem.Data;
using okulSistem.Models;

namespace okulSistem.Controllers
{
    public class DersController : Controller
    {
        private readonly AppDbContext _db;
        
        public DersController(AppDbContext db) {
            _db = db;
        }
        public IActionResult DersSayfa()
        {
            IEnumerable<Ders> objDersList = _db.Ders;
            return View(objDersList);
        }
        public IActionResult Create() //GET
        {
            using (var context = new AppDbContext())
            {
                var dersler = context.Ders.ToList();
            }

            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Ders obj) //POST
        {   
            if (ModelState.IsValid) {
                var context = new AppDbContext();
                context.Ders.Add(obj);
                context.SaveChanges();
                TempData["success"] = "Category created succsessfully";
                return RedirectToAction("DersSayfa");
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
            var DersFromDB = _db.Ders.Find(id);

            if (DersFromDB == null)
            {
                return NotFound();
            }

            return View(DersFromDB);
        }

        //POST
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(Ders obj)
        {
            if (ModelState.IsValid)
            {
                var context = new AppDbContext();
                context.Ders.Update(obj);
                context.SaveChanges();
                TempData["success"] = "Category updated successfully";
                return RedirectToAction("DersSayfa");
            }
            return View(obj);
        }
        public IActionResult Delete(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }
            var DersFromDB = _db.Ders.Find(id);

            if (DersFromDB == null)
            {
                return NotFound();
            }

            return View(DersFromDB);
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
            return RedirectToAction("DersSayfa");

        }
    }
}
