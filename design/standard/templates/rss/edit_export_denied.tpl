{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<form action={concat( '/rss/edit_export/', $rss_export.id )|ezurl} method="post">

<h1>{'RSS export is locked'|i18n( 'design/standard/rss' )}</h1>

<p>{'The RSS export %name is currently locked by %user and was last modified on %datetime.'|i18n( 'design/standard/rss',,
    hash( '%name', $rss_export.name|wash,
          '%user', concat( '<a href=', $rss_export.modifier.contentobject.main_node.url_alias|ezurl, '>', $rss_export.modifier.contentobject.name|wash,'</a>' ),
          '%datetime', $rss_export.modified|l10n( shortdatetime ) ) )}</p>

<p>{'The RSS export will be available for editing once it is stored by the modifier or when it is automatically unlocked on %datetime.'|i18n( 'design/standard/rss',,
    hash( '%datetime', sum( $rss_export.modified, $lock_timeout )|l10n( shortdatetime ) ) )}</p>

<div class="buttonblock">
    <input class="defaultbutton" type="submit" name="RetryButton" value="{'Retry'|i18n( 'design/standard/rss' )}" />
</div>

</form>
