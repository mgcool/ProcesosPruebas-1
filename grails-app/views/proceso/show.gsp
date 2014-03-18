
<%@ page import="procesostest.Proceso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'proceso.label', default: 'Proceso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-proceso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-proceso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list proceso">
			
				<g:if test="${procesoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="proceso.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${procesoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${procesoInstance?.nomenclatura}">
				<li class="fieldcontain">
					<span id="nomenclatura-label" class="property-label"><g:message code="proceso.nomenclatura.label" default="Nomenclatura" /></span>
					
						<span class="property-value" aria-labelledby="nomenclatura-label"><g:fieldValue bean="${procesoInstance}" field="nomenclatura"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${procesoInstance?.reglas}">
				<li class="fieldcontain">
					<span id="reglas-label" class="property-label"><g:message code="proceso.reglas.label" default="Reglas" /></span>
					
						<g:each in="${procesoInstance.reglas}" var="r">
						<span class="property-value" aria-labelledby="reglas-label"><g:link controller="regla" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${procesoInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="proceso.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${procesoInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${procesoInstance?.id}" />
					<g:link class="edit" action="edit" id="${procesoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>