using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Npgsql;

namespace MediStoma.AppModules.DatabaseConnection
{
    internal static class CDBAccess
    {
        public static NpgsqlConnection GetConnection()
        {
            return new NpgsqlConnection(@"Server=localhost;Port=5433; User Id=postgres;Password=20postgre01;Database=MediStoma");
        }
    }
}
