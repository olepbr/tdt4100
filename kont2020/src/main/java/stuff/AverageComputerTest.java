package stuff;

import java.util.Arrays;
import org.junit.Assert;
import org.junit.Test;

public class AverageComputerTest {

  @Test
  public void testComputeAverage() {
    final AverageComputer ac = new AverageComputer(Arrays.asList(1, 2, 3, 4));
    Assert.assertEquals(2.5, ac.computeAverage(), 0.0000001);
  }
  
  @Test(expected = IllegalArgumentException.class)
  public void testNullValueInConstructorCollection() {
	  final AverageComputer ac = new AverageComputer(Arrays.asList(1, null, 3, 4));
  }
}
