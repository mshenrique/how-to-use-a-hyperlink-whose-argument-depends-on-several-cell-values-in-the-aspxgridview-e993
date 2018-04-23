# How to use a hyperlink whose argument depends on several cell values in the ASPxGridView


<p>It is an often situation when a developer should include sever field values in a hyperlink shown in a GridView column cells. The best solution to this problem is to use templates. The attached example shows how this can be done and suggests two similar approaches:</p>
<p>1) in the "simple" case the href parameter of the <a> element is defined by the KeyValue of the processed row<br> 2) in the "complex" case, the href parameter of the <a> element is defined in the server side GetRowValue method.<br><br><strong>Update:</strong><br>If you want to use GridViewDataHyperLinkColumn and preserve its functionality, use unbound columns instead of the DataItem template. Please refer to the <a href="https://www.devexpress.com/Support/Center/p/T517626">ASPxGridView - How to create GridViewDataHyperLinkColumn whose URL depends on several column values</a> example for more information. </p>

<br/>


