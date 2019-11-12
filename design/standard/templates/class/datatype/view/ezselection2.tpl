{let content=$class_attribute.content
     i18n_context="extension/ezselection2/class/view"}

<label>{"Option list"|i18n( 'extension/ezselection2/class/view' )}:</label>
<table class="list" cellspacing="0">
    <tr>
        <th style="width: 1%;">&nbsp;</th>
        <th>{"Name"|i18n( 'extension/ezselection2/class/view' )}</th>
        <th>{"Identifier"|i18n( 'extension/ezselection2/class/view' )}</th>
        <th>{"Value"|i18n( 'extension/ezselection2/class/view' )}</th>
    </tr>
    
    {def $counter = 0}
    {foreach $content.options as $option}
    {set $counter = sum($counter,1)}
    <tr>
        <td>{$counter}.</td>
        <td>{first_set($option.name|wash,"&nbsp;")}</td>
        <td>{first_set($option.identifier|wash,"&nbsp;")}</td>
        <td>{first_set($option.value|wash,"&nbsp;")}</td>
    </tr>
    {/foreach}
</table>

<div class="block">
    <div class="element">
        <label>{"Multiple choice"|i18n( 'extension/ezselection2/class/view' )}:</label>
        <p>{cond($content.is_multiselect,"Yes"|i18n( 'extension/ezselection2/class/view' ),"No"|i18n( 'extension/ezselection2/class/view' ))}</p>
    </div>

    <div class="element">
        <label>{"Checkbox style"|i18n( 'extension/ezselection2/class/view' )}:</label>
        <p>{cond($content.is_checkbox,"Yes"|i18n( 'extension/ezselection2/class/view' ),"No"|i18n( 'extension/ezselection2/class/view' ))}</p>
    </div>
    
    <div class="element">
        <label>{"Delimiter"|i18n( 'extension/ezselection2/class/view' )}:</label>
        <p style="white-space: pre;">'{$content.delimiter|wash}'</p>
    </div>
    
    <div class="break"></div>
</div>

<div class="block">
    <label>{"Database query"|i18n( 'extension/ezselection2/class/view' )}:</label>
    <p>{$content.query|wash|nl2br}</p>
</div>
     
{/let}     