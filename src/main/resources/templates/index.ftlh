<#import "partials/main.ftlh" as main />
<@main.renderWith scripts=["/js/main.js"]>

    <a href="/register"> Зарегистрироваться! </a>

    <#if principal??>

        <#if principal.name=='manager@mail.com'>
            <p><a href="/manager">manager</a></p>
        </#if>
        <#if principal.name=='admin@mail.com'>
            <p><a href="/admin">admin</a></p>
        </#if>

        <form action="/logout" method="post">
            <#if _csrf??>
                <input type="hidden" name="${(_csrf.parameterName)!'csrf'}" value="${(_csrf.token)!'--no-token--'}"/>
            </#if>
            <button type="submit" value="">Выйти</button>
        </form>

    <#else>
        <p><a href="/login">Войти</a></p>
    </#if>


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