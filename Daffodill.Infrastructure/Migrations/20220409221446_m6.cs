using Microsoft.EntityFrameworkCore.Migrations;

namespace Daffodill.Infrastructure.Migrations
{
    public partial class m6 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_WordsDescriptions_Words_WordsId",
                table: "WordsDescriptions");

            migrationBuilder.DropForeignKey(
                name: "FK_WordsExamples_WordsDescriptions_WordsDescriptionsId",
                table: "WordsExamples");

            migrationBuilder.AlterColumn<int>(
                name: "WordsDescriptionsId",
                table: "WordsExamples",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "WordsId",
                table: "WordsDescriptions",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_WordsDescriptions_Words_WordsId",
                table: "WordsDescriptions",
                column: "WordsId",
                principalTable: "Words",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_WordsExamples_WordsDescriptions_WordsDescriptionsId",
                table: "WordsExamples",
                column: "WordsDescriptionsId",
                principalTable: "WordsDescriptions",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_WordsDescriptions_Words_WordsId",
                table: "WordsDescriptions");

            migrationBuilder.DropForeignKey(
                name: "FK_WordsExamples_WordsDescriptions_WordsDescriptionsId",
                table: "WordsExamples");

            migrationBuilder.AlterColumn<int>(
                name: "WordsDescriptionsId",
                table: "WordsExamples",
                type: "int",
                nullable: true,
                oldClrType: typeof(int));

            migrationBuilder.AlterColumn<int>(
                name: "WordsId",
                table: "WordsDescriptions",
                type: "int",
                nullable: true,
                oldClrType: typeof(int));

            migrationBuilder.AddForeignKey(
                name: "FK_WordsDescriptions_Words_WordsId",
                table: "WordsDescriptions",
                column: "WordsId",
                principalTable: "Words",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_WordsExamples_WordsDescriptions_WordsDescriptionsId",
                table: "WordsExamples",
                column: "WordsDescriptionsId",
                principalTable: "WordsDescriptions",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
