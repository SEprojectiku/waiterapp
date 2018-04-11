$(document).ready(function () {
    var i = 1;
    $("#add_row").click(function () {
        $('#addr' + i).html("<td>" + (i + 1) + "</td><td><asp:DropDownList ID='DropDownList" + i + "'/> </td><td><input  name='name" + i + "' type='text' placeholder='Name'  class='form-control input-md'></td><td><input  name='price" + i + "' type='text' placeholder='Price'  class='form-control input-md'></td>");

        $('#tab_logic').append('<tr id="addr' + (i + 1) + '"></tr>');
        i++;
    });
    $("#delete_row").click(function () {
        if (i > 1) {
            $("#addr" + (i - 1)).html('');
            i--;
        }
    });

});