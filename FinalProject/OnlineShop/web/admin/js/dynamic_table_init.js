function fnFormatDetails(data)
{
    var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
    sOut += '<thead>';
    sOut += '<tr><th>Image</th><th>Product</th><th>Price Unit</th><th>Quantity</th></tr>';
    sOut += '</thead>';
    sOut += '<tbody>';
    $.each(data, function(index, value){
        sOut += '<tr><td><img class="" style="witdh:60px;height:60px;" src="../' + value.imageUrl +'"/></td><td>' +value.productName + '</td><td>' + value.priceUnit + '</td><td>' + value.quantity + '</td></tr>';
    });
    sOut += '</tbody>';
    sOut += '</table>';

    return sOut;
}

$(document).ready(function () {

    $('#dynamic-table').dataTable({
        "aaSorting": [[4, "desc"]]
    });

    /*
     * Insert a 'details' column to the table
     */
    var nCloneTh = document.createElement('th');
    var nCloneTd = document.createElement('td');
    nCloneTd.innerHTML = '<img src="images/details_open.png" class="toggle">';
    nCloneTd.className = "center";

    $('#hidden-table-info thead tr').each(function () {
        this.insertBefore(nCloneTh, this.childNodes[0]);
    });

    $('#hidden-table-info tbody tr').each(function () {
        this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
    });

    /*
     * Initialse DataTables, with no sorting on the 'details' column
     */
    var oTable = $('#hidden-table-info').dataTable({
        "aoColumnDefs": [
            {"bSortable": false, "aTargets": [0]}
        ],
        "aaSorting": [[1, 'asc']]
    });

    /* Add event listener for opening and closing details
     * Note that the indicator for showing which row is open is not controlled by DataTables,
     * rather it is done here
     */
    $(document).on('click', '#hidden-table-info tbody td img.toggle', function () {
        var nTr = $(this).parents('tr')[0];
        if (oTable.fnIsOpen(nTr))
        {
            /* This row is already open - close it */
            this.src = "images/details_open.png";
            oTable.fnClose(nTr);
        } else
        {
            /* Open this row */
            this.src = "images/details_close.png";
            $.getJSON('getOrderDetails?orderId=1', function (data) {
                oTable.fnOpen(nTr, fnFormatDetails(data), 'details');
            });
        }
    });
});