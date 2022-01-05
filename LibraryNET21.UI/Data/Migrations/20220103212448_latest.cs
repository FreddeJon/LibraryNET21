using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace LibraryNET21.UI.Data.Migrations
{
    public partial class latest : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_BookAttribute_Covers_CoverId",
                table: "BookAttribute");

            migrationBuilder.DropForeignKey(
                name: "FK_Books_BookAttribute_AttributesId",
                table: "Books");

            migrationBuilder.DropPrimaryKey(
                name: "PK_BookAttribute",
                table: "BookAttribute");

            migrationBuilder.RenameTable(
                name: "BookAttribute",
                newName: "BookAttributes");

            migrationBuilder.RenameIndex(
                name: "IX_BookAttribute_CoverId",
                table: "BookAttributes",
                newName: "IX_BookAttributes_CoverId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_BookAttributes",
                table: "BookAttributes",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_BookAttributes_Covers_CoverId",
                table: "BookAttributes",
                column: "CoverId",
                principalTable: "Covers",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Books_BookAttributes_AttributesId",
                table: "Books",
                column: "AttributesId",
                principalTable: "BookAttributes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade); ;
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_BookAttributes_Covers_CoverId",
                table: "BookAttributes");

            migrationBuilder.DropForeignKey(
                name: "FK_Books_BookAttributes_AttributesId",
                table: "Books");

            migrationBuilder.DropPrimaryKey(
                name: "PK_BookAttributes",
                table: "BookAttributes");

            migrationBuilder.RenameTable(
                name: "BookAttributes",
                newName: "BookAttribute");

            migrationBuilder.RenameIndex(
                name: "IX_BookAttributes_CoverId",
                table: "BookAttribute",
                newName: "IX_BookAttribute_CoverId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_BookAttribute",
                table: "BookAttribute",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_BookAttribute_Covers_CoverId",
                table: "BookAttribute",
                column: "CoverId",
                principalTable: "Covers",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Books_BookAttribute_AttributesId",
                table: "Books",
                column: "AttributesId",
                principalTable: "BookAttribute",
                principalColumn: "Id");
        }
    }
}
