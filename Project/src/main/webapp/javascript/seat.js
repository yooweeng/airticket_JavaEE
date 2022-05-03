    const x= document.querySelectorAll('.occupied');
    const price=document.getElementById('ticketPrice').value;
	var seatFull=document.getElementById('seatFull').value;
    for (i = 0; i < x.length; i++) {
        x[i].disabled = true;
		seatFull++;
    }
    const selected = document.getElementById('count');
    const total = document.getElementById('price');
	
	seatFull=seatFull-1;
	if(seatFull==10)
	{
		alert("The seats for this flight had been fully booked!");
		document.getElementById('submit').disabled=true;
	}
	
    function showChecked() {
      selected.innerHTML = document.querySelectorAll('input:checked').length;
      total.innerHTML = document.querySelectorAll('input:checked').length*price;
    }