namespace LatihanCRUDMVC.Model.Repository
{
    internal class RestClient
    {
        private string baseUrl;

        public RestClient(string baseUrl)
        {
            this.baseUrl = baseUrl;
        }
    }
}