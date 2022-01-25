<#import "partials/main.ftlh" as main />
<@main.renderWith scripts=["/js/main.js"]>

    <a href="/register"> Зарегистрироваться! </a>
    <p><a href="/login">Войти</a></p>
    <p><a href="/admin">admin</a></p>
    <h1>Places</h1>
    <div class="flex flex-wrap" id="itemList">
        <#list items as listItem>
            <div class="flex flex-column box flex-v-center">
                <a href="/places/${listItem.id}">
                    <div class="flex flex-column flex-v-center box-128">
                        <img class="food-icon" src="${listItem.image}" alt="${listItem.name}">
                        ${listItem.name}
                    </div>
                </a>
            </div>
        </#list>
    </div>

    <#include "partials/pagination.ftlh">

</@main.renderWith>