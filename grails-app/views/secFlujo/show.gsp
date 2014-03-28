
<%@ page import="procesostest.SecFlujo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'secFlujo.label', default: 'SecFlujo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-secFlujo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-secFlujo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list secFlujo">
			
				<g:if test="${secFlujoInstance?.fid}">
				<li class="fieldcontain">
					<span id="fid-label" class="property-label"><g:message code="secFlujo.fid.label" default="Fid" /></span>
					
						<span class="property-value" aria-labelledby="fid-label"><g:link controller="flujo" action="show" id="${secFlujoInstance?.fid?.id}">${secFlujoInstance?.fid?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${secFlujoInstance?.secuencia}">
				<li class="fieldcontain">
					<span id="secuencia-label" class="property-label"><g:message code="secFlujo.secuencia.label" default="Secuencia" /></span>
					
						<span class="property-value" aria-labelledby="secuencia-label"><g:fieldValue bean="${secFlujoInstance}" field="secuencia"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${secFlujoInstance?.id}" />
					<g:link class="edit" action="edit" id="${secFlujoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
