using Microsoft.EntityFrameworkCore.Migrations;

namespace Daffodill.Infrastructure.Migrations
{
    public partial class m5 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "EnglishDescription",
                table: "Words");

            migrationBuilder.DropColumn(
                name: "TurkishDescription",
                table: "Words");

            migrationBuilder.AddColumn<int>(
                name: "WordsDescriptionsId",
                table: "WordsExamples",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "WordsDescriptions",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FirstDescription = table.Column<string>(nullable: true),
                    SecondDescription = table.Column<string>(nullable: true),
                    WordsId = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_WordsDescriptions", x => x.Id);
                    table.ForeignKey(
                        name: "FK_WordsDescriptions_Words_WordsId",
                        column: x => x.WordsId,
                        principalTable: "Words",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
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
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
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

            migrationBuilder.AddColumn<string>(
                name: "EnglishDescription",
                table: "Words",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "TurkishDescription",
                table: "Words",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
