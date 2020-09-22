<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Location">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Location class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="stateandbehavior.Location"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Location class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="stateandbehavior.Location"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Location class, by running the LocationTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="stateandbehavior.LocationTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Using Eclipse">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Over"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Into"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the Variables view"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188660965" resourcePath="/ovinger/src/stateandbehavior/Location.java" sizeMeasure="10" className="stateandbehavior.Location">
          <edit xsi:type="exercise:StringEdit" storedString="package stateandbehavior;&#xA;&#xA;public class Location {&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188906277" resourcePath="/ovinger/src/stateandbehavior/Location.java" sizeMeasure="43" errorCount="1" className="stateandbehavior.Location">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;double xpos;&#xA;&#x9;double ypos;&#xA;&#x9;&#xA;&#x9;public Location(double xpos, double ypos) {&#xA;&#x9;&#x9;super();&#xA;&#x9;&#x9;this.xpos = xpos;&#xA;&#x9;&#x9;this.ypos = ypos;&#xA;&#x9;}&#xA;&#xA;&#x9;public void up() {&#xA;&#x9;&#x9;ypos -= 1;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void down() {&#xA;&#x9;&#x9;ypos += 1;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void left() {&#xA;&#x9;&#x9;xpos -= 1;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void right() {&#xA;&#x9;&#x9;xpos += 1&#xA;&#x9;}&#xA;&#xA;&#x9;public double getXpos() {&#xA;&#x9;&#x9;return xpos;&#xA;&#x9;}&#xA;&#xA;&#x9;public double getYpos() {&#xA;&#x9;&#x9;return ypos;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="51" end="-88"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="27" charStart="360" charEnd="361" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188923094" resourcePath="/ovinger/src/stateandbehavior/Location.java" sizeMeasure="43" className="stateandbehavior.Location">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="335" end="-184"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188935233" resourcePath="/ovinger/src/stateandbehavior/Location.java" sizeMeasure="37" className="stateandbehavior.Location">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="81" end="-337"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188968398" resourcePath="/ovinger/src/stateandbehavior/Location.java" sizeMeasure="37" className="stateandbehavior.Location">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="() {&#xA;&#x9;&#x9;return xpos;&#xA;&#x9;}&#xA;&#xA;&#x9;public double getY" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="259" end="-111"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579189022664" resourcePath="/ovinger/src/stateandbehavior/Location.java" sizeMeasure="37" className="stateandbehavior.Location">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="int xpos;&#xA;&#x9;int" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="54" end="-339"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579189072283" resourcePath="/ovinger/src/stateandbehavior/Location.java" sizeMeasure="37" className="stateandbehavior.Location">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="int getX() {&#xA;&#x9;&#x9;return xpos;&#xA;&#x9;}&#xA;&#xA;&#x9;public int" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="242" end="-116"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579189191995" resourcePath="/ovinger/src/stateandbehavior/Location.java" sizeMeasure="39" errorCount="1" className="stateandbehavior.Location">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";&#xA;&#x9;int y;&#xA;&#xA;&#x9;public void up() {&#xA;&#x9;&#x9;y -= 1;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void down() {&#xA;&#x9;&#x9;y += 1;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void left() {&#xA;&#x9;&#x9;x -= 1;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void right() {&#xA;&#x9;&#x9;x += 1;&#xA;&#x9;}&#xA;&#xA;&#x9;public int getX() {&#xA;&#x9;&#x9;return x;&#xA;&#x9;}&#xA;&#xA;&#x9;public int getY() {&#xA;&#x9;&#x9;return y;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="59" end="-89"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="32" charStart="348" charEnd="349" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579189383416" resourcePath="/ovinger/src/stateandbehavior/Location.java" sizeMeasure="47" className="stateandbehavior.Location">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#x9;return String.format(&quot;Location: x = %d, y = %d&quot;, x, y);&#xA;&#x9;}&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Location pos = new Location();&#xA;&#x9;&#x9;pos.up();&#xA;&#x9;&#x9;System.out.println(pos.toString());&#xA;&#x9;&#x9;pos.left();&#xA;&#x9;&#x9;System.out.println(pos.toString());&#xA;&#x9;&#x9;pos.down();&#xA;&#x9;&#x9;System.out.println(pos.toString());&#xA;&#x9;&#x9;pos.right();" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="319" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579189407977" resourcePath="/ovinger/src/stateandbehavior/Location.java" sizeMeasure="48" className="stateandbehavior.Location">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(pos.toString());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="458" end="-174"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579520425827" resourcePath="/ovinger/src/stateandbehavior/Location.java" sizeMeasure="49" className="stateandbehavior.Location">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private int x;&#xA;&#x9;private int y;&#xA;&#xA;&#x9;public void up() {&#xA;&#x9;&#x9;y -= 1;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void down() {&#xA;&#x9;&#x9;y += 1;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void left() {&#xA;&#x9;&#x9;x -= 1;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void right() {&#xA;&#x9;&#x9;x += 1;&#xA;&#x9;}&#xA;&#xA;&#x9;public int getX() {&#xA;&#x9;&#x9;return x;&#xA;&#x9;}&#xA;&#xA;&#x9;public int getY() {&#xA;&#x9;&#x9;return y;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return String.format(&quot;Location: x = %d, y = %d&quot;, x, y);&#xA;&#x9;}&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Location pos = new Location();&#xA;&#x9;&#x9;System.out.println(pos.toString());&#xA;&#x9;&#x9;pos.up();&#xA;&#x9;&#x9;System.out.println(pos.toString());&#xA;&#x9;&#x9;pos.left();&#xA;&#x9;&#x9;System.out.println(pos.toString());&#xA;&#x9;&#x9;pos.down();&#xA;&#x9;&#x9;System.out.println(pos.toString());&#xA;&#x9;&#x9;pos.right();&#xA;&#x9;&#x9;System.out.println(pos.toString()" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="54" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579525018053" resourcePath="/ovinger/src/stateandbehavior/Location.java" sizeMeasure="49" className="stateandbehavior.Location">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=");&#xA;&#x9;&#x9;pos.up();&#xA;&#x9;&#x9;System.out.println(pos);&#xA;&#x9;&#x9;pos.left();&#xA;&#x9;&#x9;System.out.println(pos);&#xA;&#x9;&#x9;pos.down();&#xA;&#x9;&#x9;System.out.println(pos);&#xA;&#x9;&#x9;pos.right();&#xA;&#x9;&#x9;System.out.println(pos" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="496" end="-10"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579189388116" mode="run" className="stateandbehavior.Location">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Location</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Location: x = 0, y = -1&#xD;
Location: x = -1, y = -1&#xD;
Location: x = -1, y = 0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579189406363" mode="run" className="stateandbehavior.Location">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Location</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Location: x = 0, y = 0&#xD;
Location: x = 0, y = -1&#xD;
Location: x = -1, y = -1&#xD;
Location: x = -1, y = 0&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579188925809" completion="0.0" testRunName="stateandbehavior.LocationTest" errorCount="5">
          <errorTests>testNed</errorTests>
          <errorTests>testRight</errorTests>
          <errorTests>testLeft</errorTests>
          <errorTests>testUp</errorTests>
          <errorTests>testConstructor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579188939829" completion="0.0" testRunName="stateandbehavior.LocationTest" errorCount="5">
          <errorTests>testNed</errorTests>
          <errorTests>testRight</errorTests>
          <errorTests>testLeft</errorTests>
          <errorTests>testUp</errorTests>
          <errorTests>testConstructor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579188972438" completion="0.0" testRunName="stateandbehavior.LocationTest" errorCount="5">
          <errorTests>testNed</errorTests>
          <errorTests>testRight</errorTests>
          <errorTests>testLeft</errorTests>
          <errorTests>testUp</errorTests>
          <errorTests>testConstructor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579189028429" completion="0.0" testRunName="stateandbehavior.LocationTest" errorCount="5">
          <errorTests>testNed</errorTests>
          <errorTests>testRight</errorTests>
          <errorTests>testLeft</errorTests>
          <errorTests>testUp</errorTests>
          <errorTests>testConstructor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579189077076" completion="1.0" testRunName="stateandbehavior.LocationTest" successCount="5">
          <successTests>testNed</successTests>
          <successTests>testRight</successTests>
          <successTests>testLeft</successTests>
          <successTests>testUp</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
