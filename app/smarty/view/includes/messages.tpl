<div class="messages">
{foreach from=$messages item="message"}
<div class="alert alert-{$message.type} alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    {$message.text}
</div>
{/foreach}
</div>