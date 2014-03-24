<%@ page import="procesostest.SecFlujo;procesostest.Proceso" %>
<div class="fieldcontain ${hasErrors(bean: secFlujoInstance, field: 'fid', 'error')} required">
	<label for="fid">
		<g:message code="secFlujo.fid.label" default="Fid" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fid" name="fid.id" from="${procesostest.Flujo.list()}" optionKey="id" required="" value="${secFlujoInstance?.fid?.id}" class="many-to-one" onchange="${remoteFunction(action: 'getProcesos', params: '\'fid=\'+this.value', update:'secuencia')}"/>
        
 </div>       
 
<div id="secuencia">        

</div>

    