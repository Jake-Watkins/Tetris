class Row{
   int time;
   boolean[] values;
   Row(int width){
     this.values = new boolean[width];
     time = second();
   }
}
