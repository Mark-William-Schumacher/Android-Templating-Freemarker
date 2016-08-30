package ${skylinePackageName};

import android.util.Log;

import java.io.IOException;
import java.io.InputStream;

/**
 * {@author Mark Schumacher    mark.schumacher@scotiabank.com}
 */
public class UnitTestJsonFileReader {

    private static final String TAG = "JsonFileReader";
    /**
     * This loads Json from the resources/ folder located along side your tests.
     *  Intersting points:
     *    1) Test assets like a json response must be placed beside the java folder under a directory named
     *       "resources" not "res". Seperate resource folders for unit and androidtests can be used.
     *    2) This UnitTestJsonFileReader file MUST have the same directory structure as the files its reading in
     *    see http://stackoverflow.com/a/29220857
     *
     * @param filename
     * @return
     */
    public String loadJSONFromResourses(String filename) {
        String json = null;
        try {
            InputStream is = this.getClass().getResourceAsStream(filename);
            int size = is.available();
            byte[] buffer = new byte[size];
            is.read(buffer);
            is.close();
            json = new String(buffer);
        } catch (IOException e) {
            e.printStackTrace();
        }
        Log.d(TAG, "loadJSONFromAsset() called with: " + "filename = [" + filename + "] " +
                "Returned with "+ json);
        return json;
    }
}
