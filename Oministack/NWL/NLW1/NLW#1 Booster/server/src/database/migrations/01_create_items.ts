import Knex from 'knex';



export async function up(knex: Knex){
    // criar tabela
    return knex.schema.createTable('items', table =>{
        table.increments('id').primary();
        table.string('image').notNullable();
        table.string('title').notNullable();
    });

}

export async function down(knex: Knex){
    // reverter as alterações(deletar tabela)
    return knex.schema.dropTable('items');
}