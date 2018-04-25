/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
 package ${packageName}.global.app

import java.io.File
import java.io.FileWriter
import java.io.PrintWriter
import java.io.StringWriter
import java.util.*

class MainExceptionHandler: Thread.UncaughtExceptionHandler {
    override fun uncaughtException(t: Thread?, e: Throwable?) {
        try {
            val sw = StringWriter()
            val pw = PrintWriter(sw)
            e!!.printStackTrace(pw)
            val sStackTrace = sw.toString()
            val  dir= File("FILE FOLDER LOCATION")
            if (!dir.exists())dir.mkdir()
            val file= File("FILE LOCATION")
            val writer = FileWriter(file)
            writer.append(sStackTrace)
            writer.flush()
            writer.close()
        }catch (e:Exception){
            e.printStackTrace()
        }
        System.exit(3)
    }
}
