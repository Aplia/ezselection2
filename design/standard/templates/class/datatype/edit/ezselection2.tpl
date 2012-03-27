<!-- Added local yui files to prevent requirement of a net connection for the YUI Combo loader: --> 
<script type="text/javascript" src={"javascript/yui/yahoo-dom-event/yahoo-dom-event.js"|ezdesign}></script>
<script type="text/javascript" src={"javascript/yui/dragdrop/dragdrop-min.js"|ezdesign}></script>
<script type="text/javascript" src={"javascript/yui/element/element-min.js"|ezdesign}></script>
<script type="text/javascript" src={"javascript/yui/datasource/datasource-min.js"|ezdesign}></script>
<script type="text/javascript" src={"javascript/yui/datatable/datatable-min.js"|ezdesign}></script>
<script type="text/javascript" src={"javascript/yui/button/button-min.js"|ezdesign}></script>
<script type="text/javascript" src={"javascript/ezselection2.js"|ezdesign}></script>

{let id=$class_attribute.id
     content=$class_attribute.content}

<fieldset>
    <legend>{"Option list"|i18n( 'extension/ezselection2/class/edit' )}</legend>
    
    <div id="option-table-{$id}"></div> 
    
    <div class="block">
        <button id="AddRow_{$id}" class="button" type="button">{'New option'|i18n('extension/ezselection2/class/edit')}</button> 
    </div>

</fieldset>

        {literal}
        <script language="JavaScript" type="text/javascript" name="tablevalues">
        /*<![CDATA[*/
        <!-- 

        YAHOO.util.Event.addListener(window, "load", function() { 

            var data = [
            {/literal}{foreach $content.options as $index => $option_row}{literal}
	        { name:"{/literal}{$option_row.name}{literal}", identifier:"{/literal}{$option_row.identifier}{literal}", value:"{/literal}{$option_row.value}{literal}"} {/literal}{if ne(inc($index),count($content.options))},{/if} {literal}
            {/literal}{/foreach}{literal}
                       ];

            YAHOO.eZPublish.eZSelection2.createDataTable( {/literal}{$id}{literal}, data );
        }); 

        -->
        /*]]>*/
        </script>
        {/literal}    


<div class="block">
    <div class="element">
        <label>{"Multiple choice"|i18n( 'extension/ezselection2/class/edit' )}:</label>
        <input type="checkbox"
               name="ContentClass_ezselection2_multi_{$id}"
               {if $content.is_multiselect}checked="checked"{/if} />
    </div>

    <div class="element">
        <label>{"Use Checkboxes"|i18n( 'extension/ezselection2/class/edit' )}:</label>
        <input type="checkbox"
               name="ContentClass_ezselection2_checkbox_{$id}"
               {if $content.is_checkbox}checked="checked"{/if} />
    </div>

    <div class="element">
        <label>{"Delimiter"|i18n( 'extension/ezselection2/class/edit' )}:</label>
        <input type="text"
               name="ContentClass_ezselection2_delimiter_{$id}"
               value="{$content.delimiter|wash}"
               size="5" />
    </div>

    <div class="element">
        <label>{"Use identifier in object name pattern"|i18n( 'extension/ezselection2/class/edit' )}:</label>
        <input type="checkbox"
               name="ContentClass_ezselection2_use_identifier_name_pattern_{$id}"
               {if $content.use_identifier_name_pattern}checked="checked"{/if} />
    </div>
    
    <div class="break"></div>
</div>

<fieldset>
    <legend>{"Useful selection options"|i18n( 'extension/ezselection2/class/edit' )}</legend>

<div class="block">
    <div class="element">
        <label>{"Quickly add selection options. Use a comma to seperate entries"|i18n( 'extension/ezselection2/class/edit' )}:</label>
        <input type="text" name="ContentClass_ezselection2_options2_{$id}" value="{$content.options2|wash}" size="50" />
    </div>
</div>

</fieldset>
     
{/let}     