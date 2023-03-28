import java.io.BufferedReader;
import java.io.InputStreamReader;

public class ForkProcess {
    // Example to fork the process and get the response in java 
    public static void main(String[] args) throws Exception {
        String command = "ps -ef  ";
        //converted command to process builder
        String [] commandArray = command.split(" ");


        // create a process builder
        ProcessBuilder pb = new ProcessBuilder(commandArray);
        // start the process
        Process p = pb.start();
        // get the output from the process
        BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
        String line = null;
        while ((line = br.readLine()) != null) {
            System.out.println(line);
        }
        // wait for the process to complete
        p.waitFor();
        // get the exit code
        int exitCode = p.exitValue();
        System.out.println("Exit code: " + exitCode);
    }
}
