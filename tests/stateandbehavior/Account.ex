<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Account">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Account class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="stateandbehavior.Account"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Account class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="stateandbehavior.Account"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Account class, by running the AccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="stateandbehavior.AccountTest"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1578916880393" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="10" className="stateandbehavior.Account">
          <edit xsi:type="exercise:StringEdit" storedString="package stateandbehavior;&#xA;&#xA;public class Account {&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1578917512447" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="22" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;double balance;&#xA;&#x9;&#xA;&#x9;double interestRate;&#xA;&#x9;&#xA;&#x9;public void deposit(double innskudd) {&#xA;&#x9;&#x9;balance += innskudd;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addInterest() {&#xA;&#x9;&#x9;balance += balance * interestRate;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="50" end="-88"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1578917674009" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="26" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public Account() {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="232" end="-88"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1578917762193" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="42" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#xA;&#x9;public void setBalance(double balance) {&#xA;&#x9;&#x9;this.balance = balance;&#xA;&#x9;}&#xA;&#xA;&#x9;public double getInterestRate() {&#xA;&#x9;&#x9;return interestRate;&#xA;&#x9;}&#xA;&#xA;&#x9;public void setInterestRate(double interestRate) {&#xA;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;}&#xA;&#xA;&#x9;public " edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="269" end="-79"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1578917888752" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="42" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="((balance * interestRate) / 100)" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="205" end="-399"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579105920895" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="43" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Account() {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void deposit(double innskudd) {&#xA;&#x9;&#x9;balance += innskudd;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addInterest() {&#xA;&#x9;&#x9;balance += ((balance * interestRate) / 100);&#xA;&#x9;}&#xA;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getInterestRate() {&#xA;&#x9;&#x9;return interestRate;&#xA;&#x9;}&#xA;&#xA;&#x9;public void setBalance(double balance) {&#xA;&#x9;&#x9;this.balance = balance;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="103" end="-181"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579179464650" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="44" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="double balance, double interestRate) {&#xA;&#x9;&#x9;this.balance = balance;&#xA;&#x9;&#x9;this.interestRate = interestRate;" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="111" end="-521"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579180138064" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="44" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=") {&#xA;&#x9;&#x9;balance = 0;&#xA;&#x9;&#x9;interestRate = 0" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="111" end="-522"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579180833204" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="46" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (innskudd > 0) {&#xA;&#x9;&#x9;balance += innskudd;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="197" end="-453"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579181685982" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="41" errorCount="1" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void deposit(double innskudd) {&#xA;&#x9;&#x9;if (innskudd > 0) {&#xA;&#x9;&#x9;balance += innskudd;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addInterest() {&#xA;&#x9;&#x9;balance += ((balance * interestRate) / 100);&#xA;&#x9;}&#xA;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getInterestRate() {&#xA;&#x9;&#x9;return interestRate;&#xA;&#x9;}&#xA;&#xA;&#x9;public void setBalance(double balance) {&#xA;&#x9;&#x9;this.balance = balance;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public void setInterestRate(double interestRate) {&#xA;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;}&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Account konto = new Account();&#xA;&#x9;&#x9;konto.deposit(innskudd);" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="103" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="38" charStart="677" charEnd="685" severity="2" problemCategory="50" problemType="33554515"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579181908588" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="46" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="100);&#xA;&#x9;&#x9;System.out.println(konto.getBalance());&#xA;&#x9;&#x9;konto.setInterestRate(5);&#xA;&#x9;&#x9;System.out.println(konto.getInterestRate());&#xA;&#x9;&#x9;konto.addInterest();&#xA;&#x9;&#x9;System.out.println(konto.getBalance()" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="640" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579182000525" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="46" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;Det er &quot; + konto.getBalance() + &quot;kroner pÃ¥ kontoen.&quot;" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="667" end="-150"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579182099131" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="46" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" kroner pÃ¥ kontoen.&quot;);&#xA;&#x9;&#x9;konto.setInterestRate(5);&#xA;&#x9;&#x9;System.out.println(&quot;Rentefoten er satt til&quot; + konto.getInterestRate() + &quot; prosent.&quot;);&#xA;&#x9;&#x9;konto.addInterest();&#xA;&#x9;&#x9;System.out.println(&quot;Det er nÃ¥&quot; + konto.getBalance() + &quot; kroner pÃ¥ kontoen.&quot;" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="701" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579182120546" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="46" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" &quot; + konto.getInterestRate() + &quot; prosent.&quot;);&#xA;&#x9;&#x9;konto.addInterest();&#xA;&#x9;&#x9;System.out.println(&quot;Det er nÃ¥ " edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="797" end="-57"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579182521793" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="46" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Etter at rentene er blitt lagt til er det" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="887" end="-58"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579186341678" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="47" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.err.println(konto.getBalance() + konto.getInterestRate());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="626" end="-360"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579186392450" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="47" errorCount="2" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;Balansen er &quot; + konto.getBalance() + &quot; og rentefoten er &quot;" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="645" end="-389"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="38" charStart="747" charEnd="762" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579186440899" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="46" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="k" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="626" end="-359"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579187238040" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="50" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return &quot;Balanse = &quot; + balance + &quot;, rentefot = &quot; + interestRate;&#xA;&#x9;}&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Account konto = new Account();&#xA;&#x9;&#x9;konto.toString();&#xA;&#x9;&#x9;konto.deposit(100" edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="548" end="-264"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579187267493" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="50" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="konto.toString();&#xA;&#x9;&#x9;konto.addInterest();&#xA;&#x9;&#x9;konto.toString(" edit="/1/@proposals.0/@proposals.0/@attempts.18/@edit" start="795" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579187656332" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="50" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String.format(&quot;Balanse = %s, rentefot = %s&quot;, balance, interestRate)" edit="/1/@proposals.0/@proposals.0/@attempts.19/@edit" start="587" end="-221"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579187675637" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="50" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public double balance;&#xA;&#x9;&#xA;&#x9;public " edit="/1/@proposals.0/@proposals.0/@attempts.20/@edit" start="53" end="-803"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579187687722" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="50" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="double balance;&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.21/@edit" start="53" end="-803"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579187770383" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="50" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="f, rentefot = %f" edit="/1/@proposals.0/@proposals.0/@attempts.22/@edit" start="613" end="-246"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188101437" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="50" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Account b" edit="/1/@proposals.0/@proposals.0/@attempts.23/@edit" start="602" end="-272"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188148840" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="50" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(konto.toString()" edit="/1/@proposals.0/@proposals.0/@attempts.24/@edit" start="745" end="-123"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188181787" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="51" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(konto.toString());&#xA;&#x9;&#x9;konto.setInterestRate(5);&#xA;&#x9;&#x9;System.out.println(konto.toString());&#xA;&#x9;&#x9;konto.addInterest();&#xA;&#x9;&#x9;System.out.println(konto.toString()" edit="/1/@proposals.0/@proposals.0/@attempts.25/@edit" start="807" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188200442" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="51" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="e, rentefot = %e" edit="/1/@proposals.0/@proposals.0/@attempts.26/@edit" start="621" end="-346"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188221639" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="51" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="d, rentefot = %d" edit="/1/@proposals.0/@proposals.0/@attempts.27/@edit" start="621" end="-346"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188272919" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="51" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="f, rentefot = %f" edit="/1/@proposals.0/@proposals.0/@attempts.28/@edit" start="621" end="-346"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188345676" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="51" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1f, rentefot = %1" edit="/1/@proposals.0/@proposals.0/@attempts.29/@edit" start="621" end="-347"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188358503" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="51" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="f1, rentefot = %f1" edit="/1/@proposals.0/@proposals.0/@attempts.30/@edit" start="621" end="-346"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188405426" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="51" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".1f, rentefot = %.1f" edit="/1/@proposals.0/@proposals.0/@attempts.31/@edit" start="621" end="-346"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188610706" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="51" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="b" edit="/1/@proposals.0/@proposals.0/@attempts.32/@edit" start="602" end="-376"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579188635119" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="51" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="2" edit="/1/@proposals.0/@proposals.0/@attempts.33/@edit" start="614" end="-364"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579520434781" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="51" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private double balance;&#xA;&#x9;&#xA;&#x9;private " edit="/1/@proposals.0/@proposals.0/@attempts.34/@edit" start="53" end="-907"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579524983207" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="51" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=");&#xA;&#x9;&#x9;konto.deposit(100);&#xA;&#x9;&#x9;System.out.println(konto);&#xA;&#x9;&#x9;konto.setInterestRate(5);&#xA;&#x9;&#x9;System.out.println(konto);&#xA;&#x9;&#x9;konto.addInterest();&#xA;&#x9;&#x9;System.out.println(konto" edit="/1/@proposals.0/@proposals.0/@attempts.35/@edit" start="781" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580123924049" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="51" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.36/@edit" start="950"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579181912167" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>100.0&#xD;
5.0&#xD;
105.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579182021890" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Det er 100.0kroner på kontoen.&#xD;
5.0&#xD;
105.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579182103265" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Det er 100.0 kroner på kontoen.&#xD;
Rentefoten er satt til5.0 prosent.&#xD;
Det er nå105.0 kroner på kontoen.&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579182126403" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Det er 100.0 kroner på kontoen.&#xD;
Rentefoten er satt til 5.0 prosent.&#xD;
Det er nå 105.0 kroner på kontoen.&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579186345626" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0.0&#xD;
Det er 100.0 kroner på kontoen.&#xD;
Rentefoten er satt til 5.0 prosent.&#xD;
Etter at rentene er blitt lagt til er det 105.0 kroner på kontoen.&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579186395909" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problems: 
	Syntax error on token &quot;konto&quot;, delete this token
	The method getInterestRate() is undefined for the type String
&#xD;
	at ovinger/stateandbehavior.Account.main(Account.java:38)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579186548295" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Det er 100.0 kroner på kontoen.&#xD;
Rentefoten er satt til 5.0 prosent.&#xD;
Etter at rentene er blitt lagt til er det 105.0 kroner på kontoen.&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579187241854" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Rentefoten er satt til 5.0 prosent.&#xD;
Etter at rentene er blitt lagt til er det 105.0 kroner på kontoen.&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579187271338" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579187392627" mode="debug" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579187406234" mode="debug" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579187440164" mode="debug" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579187452722" mode="debug" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579187660243" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579187679609" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579187776471" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579188152672" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Account balanse = 0.000000, rentefot = 0.000000&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579188185751" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Account balanse = 0.000000, rentefot = 0.000000&#xD;
Account balanse = 100.000000, rentefot = 0.000000&#xD;
Account balanse = 100.000000, rentefot = 5.000000&#xD;
Account balanse = 105.000000, rentefot = 5.000000&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579188203302" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Account balanse = 0.000000e+00, rentefot = 0.000000e+00&#xD;
Account balanse = 1.000000e+02, rentefot = 0.000000e+00&#xD;
Account balanse = 1.000000e+02, rentefot = 5.000000e+00&#xD;
Account balanse = 1.050000e+02, rentefot = 5.000000e+00&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579188223987" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.util.IllegalFormatConversionException: d != java.lang.Double&#xD;
	at java.base/java.util.Formatter$FormatSpecifier.failConversion(Formatter.java:4426)&#xD;
	at java.base/java.util.Formatter$FormatSpecifier.printInteger(Formatter.java:2938)&#xD;
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2892)&#xD;
	at java.base/java.util.Formatter.format(Formatter.java:2673)&#xD;
	at java.base/java.util.Formatter.format(Formatter.java:2609)&#xD;
	at java.base/java.lang.String.format(String.java:3645)&#xD;
	at ovinger/stateandbehavior.Account.toString(Account.java:37)&#xD;
	at ovinger/stateandbehavior.Account.main(Account.java:42)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579188275976" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Account balanse = 0.000000, rentefot = 0.000000&#xD;
Account balanse = 100.000000, rentefot = 0.000000&#xD;
Account balanse = 100.000000, rentefot = 5.000000&#xD;
Account balanse = 105.000000, rentefot = 5.000000&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579188347931" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Account balanse = 0.000000, rentefot = 0.000000&#xD;
Account balanse = 100.000000, rentefot = 0.000000&#xD;
Account balanse = 100.000000, rentefot = 5.000000&#xD;
Account balanse = 105.000000, rentefot = 5.000000&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579188360439" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Account balanse = 0.0000001, rentefot = 0.0000001&#xD;
Account balanse = 100.0000001, rentefot = 0.0000001&#xD;
Account balanse = 100.0000001, rentefot = 5.0000001&#xD;
Account balanse = 105.0000001, rentefot = 5.0000001&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579188407679" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Account balanse = 0.0, rentefot = 0.0&#xD;
Account balanse = 100.0, rentefot = 0.0&#xD;
Account balanse = 100.0, rentefot = 5.0&#xD;
Account balanse = 105.0, rentefot = 5.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579188614723" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>balanse = 0.0, rentefot = 0.0&#xD;
balanse = 100.0, rentefot = 0.0&#xD;
balanse = 100.0, rentefot = 5.0&#xD;
balanse = 105.0, rentefot = 5.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579524987514" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>balanse = 0.00, rentefot = 0.0&#xD;
balanse = 100.00, rentefot = 0.0&#xD;
balanse = 100.00, rentefot = 5.0&#xD;
balanse = 105.00, rentefot = 5.0&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1578916928499" completion="0.0" testRunName="stateandbehavior.AccountTest" errorCount="4">
          <errorTests>testAddInterest</errorTests>
          <errorTests>testDeposit</errorTests>
          <errorTests>testDepositNegative</errorTests>
          <errorTests>testConstructor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1578917685667" completion="0.0" testRunName="stateandbehavior.AccountTest" errorCount="4">
          <errorTests>testAddInterest</errorTests>
          <errorTests>testDeposit</errorTests>
          <errorTests>testDepositNegative</errorTests>
          <errorTests>testConstructor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1578917768285" completion="0.5" testRunName="stateandbehavior.AccountTest" successCount="2" failureCount="2">
          <successTests>testDeposit</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testAddInterest</failureTests>
          <failureTests>testDepositNegative</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1578917891651" completion="0.75" testRunName="stateandbehavior.AccountTest" successCount="3" failureCount="1">
          <successTests>testAddInterest</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testDepositNegative</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579103299800" completion="0.75" testRunName="stateandbehavior.AccountTest" successCount="3" failureCount="1">
          <successTests>testAddInterest</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testDepositNegative</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579179637796" completion="0.0" testRunName="stateandbehavior.AccountTest" errorCount="4">
          <errorTests>testAddInterest</errorTests>
          <errorTests>testDeposit</errorTests>
          <errorTests>testDepositNegative</errorTests>
          <errorTests>testConstructor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579179837090" completion="0.0" testRunName="stateandbehavior.AccountTest" errorCount="4">
          <errorTests>testAddInterest</errorTests>
          <errorTests>testDeposit</errorTests>
          <errorTests>testDepositNegative</errorTests>
          <errorTests>testConstructor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579180146922" completion="0.75" testRunName="stateandbehavior.AccountTest" successCount="3" failureCount="1">
          <successTests>testAddInterest</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testDepositNegative</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579180717100" completion="0.75" testRunName="stateandbehavior.AccountTest" successCount="3" failureCount="1">
          <successTests>testAddInterest</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testDepositNegative</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579180842004" completion="1.0" testRunName="stateandbehavior.AccountTest" successCount="4">
          <successTests>testAddInterest</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testDepositNegative</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579181693154" completion="1.0" testRunName="stateandbehavior.AccountTest" successCount="4">
          <successTests>testAddInterest</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testDepositNegative</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579187332788" completion="1.0" testRunName="stateandbehavior.AccountTest" successCount="4">
          <successTests>testAddInterest</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testDepositNegative</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579187490610" completion="1.0" testRunName="stateandbehavior.AccountTest" successCount="4">
          <successTests>testAddInterest</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testDepositNegative</successTests>
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
