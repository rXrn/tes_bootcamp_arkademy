<!DOCTYPE html>
<html>
<body>

<h2>BIODATA DIRI - Encode JSON dari PHP</h2>

<?php
	function biodata_diri() {
		$biodata = new stdClass();
		$biodata->nama = "Ari Putra Nugraha";
		$biodata->address = "Jl. Pulau Seribu No. 5 Tabanan";
		$biodata->hobbies = array("Fitness", "Musik", "Game");
		$biodata->is_married = FALSE;
		$biodata->school = array("highSchool"=>"SMAN 1 Tabanan", "university"=>"Telkom University");
		$biodata->skill = array("Matlab", "C");

		$myJSON = json_encode($biodata);

		echo $myJSON;
	}
	
	biodata_diri();
?>

</body>
</html>