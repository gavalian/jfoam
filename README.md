# jfoam
FOAM Generator implementation in JAVA

Example code included will generate random numbers from distribution
given by the class CosineFunction2D.java. To get started use command:

>mvn install
>./foam.sh

This executes main method of class MCFoam shown here:

  CosineFunction2D cosFunc = new CosineFunction2D();
  MCFoam foam = new MCFoam(cosFunc);
  foam.init();
  double[] values = new double[2];
  for(int i = 0; i < 50000; i++){
      foam.getRandom(values);
      System.out.println(ArrayUtils.getString(values,"%.5f", " "));
   }
   foam.showStats();
        
To implement your own density function extend IMCFunc interface and override 2 functions
line in the example of CosineFunction2D.java class. 

  public class CosineFunction2D implements IMCFunc {  
    double x1 = 0.5;
    double y1 = 0.5;
    double x2 = 0.3;
    double y2 = 0.3;
    
    public int getNDim() {
        return 2;
    }

    public double getWeight(double[] par) {
        double x = par[0];
        double y = par[1];
        double r1 = (x-x1)*(x-x1) + (y-y1)*(y-y1);
        double func = 2.2 + Math.sin(r1*20);
        return func;
     }
    
   }
  
And initialize MCFoam with your implementation of IMCFoam interface.
