using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace LibraryNET21.UI.Data.Migrations
{
    public partial class AddedAttributes : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "AttributesId",
                table: "Books",
                type: "int",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Cover",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CoverType = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Cover", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "BookAttribute",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CoverId = table.Column<int>(type: "int", nullable: true),
                    Pages = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BookAttribute", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BookAttribute_Cover_CoverId",
                        column: x => x.CoverId,
                        principalTable: "Cover",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateIndex(
                name: "IX_Books_AttributesId",
                table: "Books",
                column: "AttributesId");

            migrationBuilder.CreateIndex(
                name: "IX_BookAttribute_CoverId",
                table: "BookAttribute",
                column: "CoverId");

            migrationBuilder.AddForeignKey(
                name: "FK_Books_BookAttribute_AttributesId",
                table: "Books",
                column: "AttributesId",
                principalTable: "BookAttribute",
                principalColumn: "Id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Books_BookAttribute_AttributesId",
                table: "Books");

            migrationBuilder.DropTable(
                name: "BookAttribute");

            migrationBuilder.DropTable(
                name: "Cover");

            migrationBuilder.DropIndex(
                name: "IX_Books_AttributesId",
                table: "Books");

            migrationBuilder.DropColumn(
                name: "AttributesId",
                table: "Books");
        }
    }
}
