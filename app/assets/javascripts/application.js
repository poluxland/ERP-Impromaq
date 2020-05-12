//= require rails-ujs
//= require_tree .


function printpage()
{
   window.print()
}


$(document).ready(function() {
	//Only needed for the filename of export files.
	//Normally set in the title tag of your page.

	// DataTable initialisation
	$('#myTable').DataTable(
		{
			"dom": '<"dt-buttons"Bfli>rtp',
			"paging": true,
			"autoWidth": true,
      "keys": true,
      "order": [[ 0, "desc" ]],
			"buttons": [
				'colvis',
				'copyHtml5',
        'csvHtml5',
				'excelHtml5',
        'pdfHtml5',
				'print'
			],

		}


	);
});
