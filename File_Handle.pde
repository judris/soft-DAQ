void folderSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    println("User selected " + selection.getAbsolutePath());
    fullPathName = selection.getAbsolutePath();
  }
}

 void makefilename() //generates filename
{
  int d = day();    // Values from 1 - 31
  String sd = nfs(d, 2);
  int mo = month();  // Values from 1 - 12
  String smo = nfs(mo, 2);
  int y = year();   // 2003, 2004, 2005, etc. 
  String sy = nfs(y, 4);
  int mi = minute();
  String smi = nfs(mi, 2);
  int se = second();
  String sse = nfs(se, 2);
  int h = hour();
  String sh = nfs(h, 2);
  String ending = ".txt";

  String[] date = new String[7];
  date[0] = sy; 
  date[1] = smo; 
  date[2] = sd; 
  date[3] = sh; 
  date[4] = smi; 
  date[5] = sse; 
  date[6] = ending;
  joinedDate = join(date, "");

  String[] fileParts = new String[3];
  fileParts[0] = fullPathName;
  fileParts[1] = "/";
  fileParts[2] = joinedDate;
  DAQfileName = join(fileParts,"");
  println(DAQfileName);
}

void createDAQFile(){
  outputFile1 = createWriter(DAQfileName); 
}

void collectData() {
  if (startflag == true)
  outputFile1.println(AnalysisTiming + " " + inByte1);
}

void closeDAQFile() {
  outputFile1.flush(); // Writes the remaining data to the file
  outputFile1.close(); // Finishes the file
}

void calculateAnalysisTiming() {
  if (startflag == true){
 AnalysisTiming = timing - float(timingsubtract)/1000.0;
  } 
}
