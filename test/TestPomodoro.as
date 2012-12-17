/**
 * Created with IntelliJ IDEA.
 * User: angela.relle
 * Date: 17/12/12
 * Time: 12:50
 * To change this template use File | Settings | File Templates.
 */
package {
import org.flexunit.asserts.assertEquals;

import uk.co.dilkusha.Pomodoro;

public class TestPomodoro {
    public function TestPomodoro() {

    }

    [Before]
    public function setUp():void {

    }

    [After]
    public function tearDown():void {

    }

    [Test]
    public function testStartingPomodoroSetsTimeLeftTo25Minutes():void {
        var pomodoro:Pomodoro = new Pomodoro();
        pomodoro.start();
        assertEquals("25:00", pomodoro.timeLeft)
    }

    [Test]
    public function

}
}
