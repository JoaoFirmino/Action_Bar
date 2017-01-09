// Action Bar description file :new_action_bar
run("Action Bar","/plugins/ActionBar/Joao_shortcuts.ijm");
exit;

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
label=Label
icon=noicon
arg=<macro>
run("Label...");
showMessage("Label");
</macro>
<button> 2 line 4
label=button_2_4
icon=noicon
arg=<macro>
showMessage("You pressed button 2 line 4");
</macro>
</line>
<line>
<button> 1 line 5
label=button_1_5
icon=noicon
arg=<macro>
showMessage("You pressed button 1 line 5");
</macro>
<button> 2 line 5
label=button_2_5
icon=noicon
arg=<macro>
showMessage("You pressed button 2 line 5");
</macro>
</line>
// end of file
