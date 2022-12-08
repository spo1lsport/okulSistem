using Microsoft.AspNetCore.Mvc;
using okulSistem.Data;
using okulSistem.Models;

namespace okulSistem.Controllers
{
    public class OkulYonetimController : Controller
    {
        private readonly AppDbContext _db;

        public OkulYonetimController(AppDbContext db)
        {
            _db = db;
        }
        public IActionResult Index()
        {
            IEnumerable<OkulYonetim> objOkulYonetimList = _db.OkulYonetim;
            return View(objOkulYonetimList);
        }
        public IActionResult Create() //GET
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(OkulYonetim obj) //POST
        {
            if (ModelState.IsValid)
            {
                var context = new AppDbContext();
                context.OkulYonetim.Add(obj);
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
            var OkulYonetimFromDB = _db.OkulYonetim.Find(id);

            if (OkulYonetimFromDB == null)
            {
                return NotFound();
            }

            return View(OkulYonetimFromDB);
        }

        //POST
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(OkulYonetim obj)
        {
            if (ModelState.IsValid)
            {
                var context = new AppDbContext();
                context.OkulYonetim.Update(obj);
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
            var OkulYonetimFromDB = _db.OkulYonetim.Find(id);

            if (OkulYonetimFromDB == null)
            {
                return NotFound();
            }

            return View(OkulYonetimFromDB);
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
