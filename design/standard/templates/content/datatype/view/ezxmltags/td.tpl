<td valign="top"{section show=$colspan} colspan="{$colspan}"{/section}{section show=$rowspan} rowspan="{$rowspan}"{/section}{section show=$width} width="{$width}"{/section}>
{switch name=Sw match=$content}
  {case match="<p></p>"}
  &nbsp;
  {/case}
  {case match=""}
  &nbsp;
  {/case}
  {case}
  {$content}
  {/case}
{/switch}
</td>