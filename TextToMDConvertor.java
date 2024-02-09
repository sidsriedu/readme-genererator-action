import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class TextToMDConvertor{

    public void convertTextToMD(String textFilePath, String mdFilePath){
        BufferedReader reader = null;
        FileWriter fileWriter = null;
        try{
            reader = new BufferedReader(new FileReader(textFilePath));
            fileWriter = new FileWriter(mdFilePath);
            String line = null;
            while((line=reader.readLine())!=null){
                fileWriter.write(line);
                fileWriter.write(System.lineSeparator());
            }
        } catch (IOException e){
            e.printStackTrace();
        } finally {
            try {
                if(reader!=null){
                    reader.close();
                }
                if(fileWriter!=null){
                    fileWriter.close();
                }
            } catch (IOException e){
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args){
        TextToMDConvertor convertor = new TextToMDConvertor();
        convertor.convertTextToMD("data.txt", "README.md");
    }

}