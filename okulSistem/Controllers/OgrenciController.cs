using Microsoft.AspNetCore.Mvc;
using okulSistem.Data;
using okulSistem.Models;

namespace okulSistem.Controllers
{
    public class OgrenciController : Controller
    {
        private readonly AppDbContext _db;

        public OgrenciController(AppDbContext db)
        {
            _db = db;
        }
        public IActionResult Index()
        {
            IEnumerable<Ogrenci> objOgrenciList = _db.Ogrenci;
            return View(objOgrenciList);
        }
        public IActionResult Create() //GET
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Ogrenci obj) //POST
        {
            if (ModelState.IsValid)
            {
                var context = new AppDbContext();
                context.Ogrenci.Add(obj);
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
            var OgrencıFromDB = _db.Ogrenci.Find(id);

            if (OgrencıFromDB == null)
            {
                return NotFound();
            }

            return View(OgrencıFromDB);
        }

        //POST
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(Ogrenci obj)
        {
            if (ModelState.IsValid)
            {
                var context = new AppDbContext();
                context.Ogrenci.Update(obj);
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
            var OgrencıFromDB = _db.Ogrenci.Find(id);

            if (OgrencıFromDB == null)
            {
                return NotFound();
            }

            return View(OgrencıFromDB);
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
