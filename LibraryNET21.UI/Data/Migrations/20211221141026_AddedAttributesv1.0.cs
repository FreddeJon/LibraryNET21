using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace LibraryNET21.UI.Data.Migrations
{
    public partial class AddedAttributesv10 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_BookAttribute_Cover_CoverId",
                table: "BookAttribute");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Cover",
                table: "Cover");

            migrationBuilder.RenameTable(
                name: "Cover",
                newName: "Covers");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Covers",
                table: "Covers",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_BookAttribute_Covers_CoverId",
                table: "BookAttribute",
                column: "CoverId",
                principalTable: "Covers",
                principalColumn: "Id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_BookAttribute_Covers_CoverId",
                table: "BookAttribute");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Covers",
                table: "Covers");

            migrationBuilder.RenameTable(
                name: "Covers",
                newName: "Cover");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Cover",
                table: "Cover",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_BookAttribute_Cover_CoverId",
                table: "BookAttribute",
                column: "CoverId",
                principalTable: "Cover",
                principalColumn: "Id");
        }
    }
}
