/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
 package ${packageName}.global.app;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.*;

public class MainExceptionHandler implements Thread.UncaughtExceptionHandler {
    @Override
        public void uncaughtException(Thread t, Throwable e) {
          try {
                     StringWriter sw = new StringWriter();
                     PrintWriter pw = new PrintWriter(sw);
                     e.printStackTrace(pw);
                     String sStackTrace = sw.toString();
                     File  dir= new File("FILE FOLDER LOCATION");
                     if (!dir.exists())dir.mkdir();
                     File file= new File("FILE LOCATION");
                     FileWriter writer = new FileWriter(file);
                     writer.append(sStackTrace);
                     writer.flush();
                     writer.close();
                 }catch (Exception it){
                     it.printStackTrace();
                 }
                 System.exit(3);
        }
}
