var dublinParks = [
	"Emerald Glen Park A",
	"Emerald Glen Park B",
	"Emerald Glen Park C",
	"Emerald Glen Park D",
	"Emerald Glen Park E",
	"Kolb Park",
	"Schaefer Ranch Park"
];
var pleasantonParks = [
	"Amador Valley Community Park",
	"Ken Mercer Sports and Recreation Community Park",
	"Val Vista Community Park"
];
var sanRamonParks = [
	"Athan Downs",
	"Central Park",
	"Hidden Valley Park",
	"Ramona Park",
	"Rancho San Ramon Community Park",
	"Sports Park",
	"Valley View Park"
];

function getPark(city){
	if(city=='Dublin'){
		return dublinParks;
	}else if (city=='Pleasanton'){
		return pleasantonParks;
	}else{
		return sanRamonParks;
	}
}

function getCity(city){
	var parkHTML = '';
	var parks = getPark(city);
	for (var name in parks){
		var park = parks[name].replace(/ /g, "+");
		parkHTML += '<li><a href="TVParks?park=' + park + '&city=' + city + '">' + parks[name] + '</a></li>';
	}
	return parkHTML;
}

function getDublin(){
	return getCity('Dublin');
}
function getPleasanton(){
	return getCity('Pleasanton');
}
function getSanRamon(){
	return getCity('San+Ramon');
}