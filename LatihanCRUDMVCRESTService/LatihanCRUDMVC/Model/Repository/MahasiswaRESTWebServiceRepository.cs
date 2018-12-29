using LatihanCRUDMVC.Model.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LatihanCRUDMVC.Model.Repository
{
    public class MahasiswaRESTWebServiceRepository
    {
        public Mahasiswa GetByNpm(string npm)
        {
            throw new NotImplementedException();
        }

        public List<Mahasiswa> GetByNama(string nama)
        {
            throw new NotImplementedException();
        }

        public List<Mahasiswa> GetAll()
        {
            var baseUrl = "http://www.buatdevelop.com/perpustakaan/api/mahasiswa/";
            var endpoint = "get_all";

            // buat object dari class RestClient
            var client = new RestClient(baseUrl);

            // buat object request
            var request = new RestRequest(endpoint, MethodAccessException.GET);

            // kirim request ke server
            var response = 
            throw new NotImplementedException();
        }

        public int Save(Mahasiswa obj)
        {
            throw new NotImplementedException();
        }

        public int Update(Mahasiswa obj)
        {
            throw new NotImplementedException();
        }

        public int Delete(Mahasiswa obj)
        {
            throw new NotImplementedException();
        }
    }
}
