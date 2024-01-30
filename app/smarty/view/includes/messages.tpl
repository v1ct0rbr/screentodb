<div class="messages">
{foreach from=$mymessages item="message"}
<div class="alert alert-default alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    {$message.text}
</div>
{/foreach}
</div>