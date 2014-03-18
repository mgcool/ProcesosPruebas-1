
<%@ page import="procesostest.Proceso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'proceso.label', default: 'Proceso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-proceso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-proceso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'proceso.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="nomenclatura" title="${message(code: 'proceso.nomenclatura.label', default: 'Nomenclatura')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'proceso.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${procesoInstanceList}" status="i" var="procesoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${procesoInstance.id}">${fieldValue(bean: procesoInstance, field: "descripcion")}</g:link></td>
					
						<td>${fieldValue(bean: procesoInstance, field: "nomenclatura")}</td>
					
						<td>${fieldValue(bean: procesoInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${procesoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>