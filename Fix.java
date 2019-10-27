import java.io.*;
import java.util.*;
import java.util.regex.*;

public class Fix
{
	public static void main(String[] args) throws IOException
	{
		//read in the txt file
		BufferedReader fin = new BufferedReader(new FileReader("Return.txt"));
		//write out the new txt file
		PrintWriter fout = new PrintWriter(new FileWriter("Returnfixed1.txt"));

		String line;
		while ((line = fin.readLine()) != null)
		{	
			//if the line is empty, ignore it
			if (line.equals(""))
				continue;
			//replace every other character besides alphabet letters and space into blank 
			line = line.replaceAll("[^A-Za-z ]","");
			//replace new line into blank
			line = line.replaceAll("  ","");
			//print out the replaced line
			fout.println(line);
		}
		fout.close();
		fin.close();
	}
}