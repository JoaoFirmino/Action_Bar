// Action Bar description file : Joao's super ActionBar

// Install common functions
call("BIOP_LibInstaller.installLibrary", "BIOP"+File.separator+"BIOPLib.ijm");


run("Action Bar","/plugins/ActionBar/Joao_shortcuts.ijm");
exit;
<codeLibrary>
 function toolName() {
 	return "Joao's Settings";
 }

</codeLibrary>

<line>
<button>
label=FRC
icon=noicon
arg=<macro>
run("FRC Calculation...");
</macro>
<button>
label=Batch FRC
icon=noicon
arg=<macro>
//this is the best thing eva
// Cheese
run("FRC Calculation (Batch)...");
</macro>
</line>

<line>
<button>
label=PTS Analysis
icon=noicon
arg=<macro>
run("PTS Analyzer");
</macro>
</line>

<line> 
<button>
label=Save as TIF
icon=noicon
arg=<macro>
run("Tiff...");
</macro>
</line>
<line>
<button>
label=Z Project
icon=noicon
arg=<macro>
run("Z Project...");
</macro>
<button> 
label=Split Channels
icon=noicon
arg=<macro>
run("Split Channels");
</macro>
</line>
<line>
<button>
label=Set B&C Current Image
icon=noicon
arg=<macro>
getDimensions(width, height, channels, slices, frames);
	for (i=0;i<channels;i++){
		chNbr=(i+1);
		if(nSlices>1) {
			Stack.setChannel(chNbr);
		}
		run("Brightness/Contrast...");
		waitForUser(" Set B&C for channel "+chNbr+"\n Please set Min and Max \n and press Ok");
		getMinAndMax(min, max);
		setData("min ch"+chNbr,min);
		setData("max ch"+chNbr,max);
	}
</macro>
<button>
label=Apply B&C Current Image
icon=noicon
arg=<macro>
	getDimensions(width, height, channels, slices, frames);
	for (i=0;i<channels;i++){
		chNbr=(i+1);
		if(nSlices>1) {
			Stack.setChannel(chNbr);
		}
		min = getData("min ch"+chNbr);
		max = getData("max ch"+chNbr);
		setMinAndMax(min, max);
	}
</macro>
</line>
// end of file
