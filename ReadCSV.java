package quicksortbankage;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class ReadCSV {

static int count=0;
    static int partition(Row arr[], int low, int high)
    {
        Row pivot = arr[high];
        int i = (low-1);
        for (int j=low; j<high; j++)
        {
            if (arr[j] .compareTo(pivot)<=0)
            {
                i++;
                Row temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
count++;
            }
        }
        Row temp = arr[i+1];
        arr[i+1] = arr[high];
        arr[high] = temp;

count++;
        return i+1;
    }

    static void sort(Row arr[], int low, int high)
    {
        if (low < high)
        {
            int pi = partition(arr, low, high);
            sort(arr, low, pi-1);
            sort(arr, pi+1, high);
        }
    }

public static class Row implements Comparable<Row> {
//other properties
public double balance;
public int duration;

public Row(double balance, int duration) {
	this.balance=balance;
	this.duration=duration;
}

//comparator function
public int compareTo(Row rhs){
 if(this.balance < rhs.balance) {
return -1;
}
if(this.balance > rhs.balance) {
return 1;
}
if(this.balance == rhs.balance) {
return 0;
}
return duration;
}
}

    public static void main(String[] args) throws NumberFormatException, IOException {
    BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\Utkarsh Jayaswal\\Dropbox\\My PC (CLASSIFIED)\\Downloads\\bank(2).csv"));

// creating a global container for all rows
List<Row> rows = new ArrayList<Row>();

    try {
     String line = br.readLine();

     while (line != null) {
String[] values = line.split(",");
try {
double balance = Double.parseDouble(values[6]);
int duration = Integer.parseInt(values[12]);
Row row = new Row(balance, duration);
//reading one row and adding it to the global container
rows.add(row);
}
catch(Exception e){}
finally {
	line = br.readLine();
}
     }
   
    } finally {
            br.close();
    Row[] inputArray = new Row[rows.size()];
    						inputArray = rows.toArray(inputArray);
long startTime = System.nanoTime();
            sort(inputArray, 0, inputArray.length - 1);
long elapsedTime = System.nanoTime() - startTime;
System.out.println("Comparion = "+count);
System.out.println("Time"+"= " + elapsedTime/1000000.0f+" milliseconds");
        }
    }
}