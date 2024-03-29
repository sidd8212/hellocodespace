import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Arrays;


public class ForkProcessBash {
    


    public static void main(String[] args) throws Exception {
        String command = "ps -ef | grep codespace | grep 391 ";
        //converted command to process builder
        

        // create a process builder
        ProcessBuilder pb = new ProcessBuilder("/bin/sh", "-c",command);
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
