void ZoomIn(){
  scalingFactor = scalingFactor * 2.0;
}

void ZoomOut(){
  scalingFactor = scalingFactor / 2.0;
}

void TimePlus(){
 timingFactor = timingFactor * 2.0 ;
}
void TimeMinus(){
 timingFactor = timingFactor / 2.0; 
}

void OffsetPlus(){
 offset = offset - 300.0; 
}

void OffsetMinus(){
 offset = offset + 300.0; 
}

void AnalysisTimeUP(){
 AnalysisButton = AnalysisButton + 1; 
}

void AnalysisTimeDown(){
 AnalysisButton = AnalysisButton - 1; 
}
