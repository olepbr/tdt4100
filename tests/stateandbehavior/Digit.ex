<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Digit">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Digit class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="stateandbehavior.Digit"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Digit class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="stateandbehavior.Digit"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Digit class, by running the DigitTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="stateandbehavior.DigitTest"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579519633276" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="47" errorCount="1" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:StringEdit" storedString="package stateandbehavior;&#xA;&#xA;public class Digit {&#xA;&#x9;&#xA;&#x9;int base;&#xA;&#x9;int value;&#xA;&#xA;&#x9;public Digit(int base) {&#xA;&#x9;&#x9;super();&#xA;&#x9;&#x9;this.base = base;&#xA;&#x9;&#x9;value = 0;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public boolean increment() {&#xA;&#x9;&#x9;value += 1;&#xA;&#x9;&#x9;if (value == base) {&#xA;&#x9;&#x9;&#x9;value = 0;&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#x9;&#xA;&#xA;&#x9;public int getBase() {&#xA;&#x9;&#x9;return base;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public int getValue() {&#xA;&#x9;&#x9;return value;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;if (value &lt; 10) {&#xA;&#x9;&#x9;return String.valueOf(value);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="35" charStart="415" charEnd="425" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579520257385" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="47" errorCount="1" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private int base;&#xA;&#x9;private " edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="51" end="-480"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="35" charStart="431" charEnd="441" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579701268050" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="50" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;private int base;&#xA;&#x9;private int value;&#xA;&#xA;&#x9;public Digit(int base) {&#xA;&#x9;&#x9;super();&#xA;&#x9;&#x9;this.base = base;&#xA;&#x9;&#x9;value = 0;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public boolean increment() {&#xA;&#x9;&#x9;value += 1;&#xA;&#x9;&#x9;if (value == base) {&#xA;&#x9;&#x9;&#x9;value = 0;&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public int getBase() {&#xA;&#x9;&#x9;return base;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public int getValue() {&#xA;&#x9;&#x9;return value;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;if (value &lt; 10) {&#xA;&#x9;&#x9;&#x9;return String.valueOf(value);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return Character.toString((char) value + 55" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="48" end="-99"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579701367192" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="49" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(Character.toString((char) 65));" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="572" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579701390395" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="49" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="572" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579701571926" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="51" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="else {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public int getBase() {&#xA;&#x9;&#x9;return base;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public int getValue() {&#xA;&#x9;&#x9;return value;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;if (value &lt; 10) {&#xA;&#x9;&#x9;&#x9;return String.valueOf(value);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return Character.toString((char) value + 55);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="267" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579701801644" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="74" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#x9;Digit fjort = new Digit(14);&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="584" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579701819624" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="78" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1195" end="-6"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579701838447" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="82" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;&#x9;fjort.increment();&#xA;&#x9;&#x9;System.out.println(fjort);&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="1295" end="-6"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579701933304" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="82" errorCount="1" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="char" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="513" end="-882"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="42" charStart="554" charEnd="558" severity="2" problemCategory="20" problemType="1610612968"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579701949164" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="82" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(char)" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="513" end="-882"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579702057846" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="82" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String.valueOf(Character.toChars( value + 55)" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="494" end="-871"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579702209998" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="83" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(fjort.getBase());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="655" end="-755"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579701370965" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>A&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579701803931" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0&#xD;
1&#xD;
2&#xD;
3&#xD;
4&#xD;
5&#xD;
6&#xD;
7&#xD;
8&#xD;
9&#xD;
A&#xD;
B&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579701822494" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0&#xD;
1&#xD;
2&#xD;
3&#xD;
4&#xD;
5&#xD;
6&#xD;
7&#xD;
8&#xD;
9&#xD;
A&#xD;
B&#xD;
C&#xD;
D&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579701841092" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0&#xD;
1&#xD;
2&#xD;
3&#xD;
4&#xD;
5&#xD;
6&#xD;
7&#xD;
8&#xD;
9&#xD;
A&#xD;
B&#xD;
C&#xD;
D&#xD;
0&#xD;
1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579701936113" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	Syntax error on token &quot;char&quot;, delete this token
&#xD;
	at ovinger/stateandbehavior.Digit.toString(Digit.java:42)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.io.PrintStream.println(PrintStream.java:977)&#xD;
	at ovinger/stateandbehavior.Digit.main(Digit.java:49)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579701951384" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0&#xD;
1&#xD;
2&#xD;
3&#xD;
4&#xD;
5&#xD;
6&#xD;
7&#xD;
8&#xD;
9&#xD;
A&#xD;
B&#xD;
C&#xD;
D&#xD;
0&#xD;
1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579702059301" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0&#xD;
1&#xD;
2&#xD;
3&#xD;
4&#xD;
5&#xD;
6&#xD;
7&#xD;
8&#xD;
9&#xD;
A&#xD;
B&#xD;
C&#xD;
D&#xD;
0&#xD;
1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579702211183" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0&#xD;
14&#xD;
1&#xD;
2&#xD;
3&#xD;
4&#xD;
5&#xD;
6&#xD;
7&#xD;
8&#xD;
9&#xD;
A&#xD;
B&#xD;
C&#xD;
D&#xD;
0&#xD;
1&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579520260926" completion="0.6666666666666666" testRunName="stateandbehavior.DigitTest" successCount="2" errorCount="1">
          <successTests>testDigit</successTests>
          <successTests>testIncrement</successTests>
          <errorTests>testToString</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579701467290" completion="1.0" testRunName="stateandbehavior.DigitTest" successCount="3">
          <successTests>testDigit</successTests>
          <successTests>testToString</successTests>
          <successTests>testIncrement</successTests>
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
