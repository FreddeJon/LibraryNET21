using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace LibraryNET21.UI.Data.Migrations
{
    public partial class AdddingRentals : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Rentals",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RentedBookId = table.Column<int>(type: "int", nullable: true),
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: true),
                    IsReturned = table.Column<bool>(type: "bit", nullable: false),
                    DateRented = table.Column<DateTime>(type: "datetime2", nullable: false),
                    DateReturned = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Rentals", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Rentals_Books_RentedBookId",
                        column: x => x.RentedBookId,
                        principalTable: "Books",
                        principalColumn: "Id");
                    table.ForeignKey(
      name: "FK_Rentals_AspNetUsers_UserId",
      column: x => x.UserId,
      principalTable: "AspNetUsers",
      principalColumn: "Id");

                });

            migrationBuilder.CreateIndex(
                name: "IX_Rentals_RentedBookId",
                table: "Rentals",
                column: "RentedBookId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Rentals");
        }
    }
}
