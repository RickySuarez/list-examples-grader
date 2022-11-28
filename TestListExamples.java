import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertSame;
import org.junit.Test;
import java.util.ArrayList;
import java.util.List;

public class TestListExamples {
  
  @Test(timeout=100)
  public void testFilter(){
    StringChecker sc = s1 -> s1.contains("Hello");
  }
}
