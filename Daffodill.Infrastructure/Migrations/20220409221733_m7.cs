using Microsoft.EntityFrameworkCore.Migrations;

namespace Daffodill.Infrastructure.Migrations
{
    public partial class m7 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_WordsExamples_WordsDescriptions_WordsDescriptionsId",
                table: "WordsExamples");

            migrationBuilder.DropTable(
                name: "WordsDescriptions");

            migrationBuilder.DropIndex(
                name: "IX_WordsExamples_WordsDescriptionsId",
                table: "WordsExamples");

            migrationBuilder.DropColumn(
                name: "WordsDescriptionsId",
                table: "WordsExamples");

            migrationBuilder.AddColumn<int>(
                name: "WordsMeaningsId",
                table: "WordsExamples",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "WordsMeanings",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Meaning = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    WordsId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_WordsMeanings", x => x.Id);
                    table.ForeignKey(
                        name: "FK_WordsMeanings_Words_WordsId",
                        column: x => x.WordsId,
                        principalTable: "Words",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_WordsExamples_WordsMeaningsId",
                table: "WordsExamples",
                column: "WordsMeaningsId");

            migrationBuilder.CreateIndex(
                name: "IX_WordsMeanings_WordsId",
                table: "WordsMeanings",
                column: "WordsId");

            migrationBuilder.AddForeignKey(
                name: "FK_WordsExamples_WordsMeanings_WordsMeaningsId",
                table: "WordsExamples",
                column: "WordsMeaningsId",
                principalTable: "WordsMeanings",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_WordsExamples_WordsMeanings_WordsMeaningsId",
                table: "WordsExamples");

            migrationBuilder.DropTable(
                name: "WordsMeanings");

            migrationBuilder.DropIndex(
                name: "IX_WordsExamples_WordsMeaningsId",
                table: "WordsExamples");

            migrationBuilder.DropColumn(
                name: "WordsMeaningsId",
                table: "WordsExamples");

            migrationBuilder.AddColumn<int>(
                name: "WordsDescriptionsId",
                table: "WordsExamples",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "WordsDescriptions",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FirstDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SecondDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    WordsId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_WordsDescriptions", x => x.Id);
                    table.ForeignKey(
                        name: "FK_WordsDescriptions_Words_WordsId",
                        column: x => x.WordsId,
                        principalTable: "Words",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_WordsExamples_WordsDescriptionsId",
                table: "WordsExamples",
                column: "WordsDescriptionsId");

            migrationBuilder.CreateIndex(
                name: "IX_WordsDescriptions_WordsId",
                table: "WordsDescriptions",
                column: "WordsId");

            migrationBuilder.AddForeignKey(
                name: "FK_WordsExamples_WordsDescriptions_WordsDescriptionsId",
                table: "WordsExamples",
                column: "WordsDescriptionsId",
                principalTable: "WordsDescriptions",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
