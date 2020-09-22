<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Account">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Account class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.Account"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Account class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="encapsulation.Account"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Account class, by running the AccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.AccountTest"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580300846113" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="5" className="encapsulation.Account">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;&#xA;public class Account {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580300896428" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="10" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="48" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580303516377" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="10" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="134"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580303940683" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="62" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate double balance;&#xA;&#xA;&#x9;private double interestRate;&#xA;&#xA;&#x9;public Account(double balance, double interestRate) {&#xA;&#x9;&#x9;super();&#xA;&#x9;&#x9;if (balance &lt; 0 || interestRate &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Hverken saldoen eller rentefoten kan vÃ¦re negative&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;this.balance = balance;&#xA;&#x9;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;public void deposit(double innskudd) {&#xA;&#x9;&#x9;if (innskudd > 0) {&#xA;&#x9;&#x9;balance += innskudd;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addInterest() {&#xA;&#x9;&#x9;balance += ((balance * interestRate) / 100);&#xA;&#x9;}&#xA;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getInterestRate() {&#xA;&#x9;&#x9;return interestRate;&#xA;&#x9;}&#xA;&#xA;&#x9;public void setBalance(double balance) {&#xA;&#x9;&#x9;this.balance = balance;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public void setInterestRate(double interestRate) {&#xA;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return String.format(&quot;balanse = %.2f, rentefot = %.1f&quot;, balance, interestRate);&#xA;&#x9;}&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Account konto = new Account(-1, 0);&#xA;&#x9;&#x9;System.out.println(konto);&#xA;&#x9;&#x9;konto.deposit(100);&#xA;&#x9;&#x9;System.out.println(konto);&#xA;&#x9;&#x9;konto.setInterestRate(5);&#xA;&#x9;&#x9;System.out.println(konto);&#xA;&#x9;&#x9;konto.addInterest();&#xA;&#x9;&#x9;System.out.println(konto);" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="50" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580304351222" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="79" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Innskudd kan ikke vÃ¦re negative!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void withdraw(double uttak) {&#xA;&#x9;&#x9;if ((balance - uttak) > 0) {&#xA;&#x9;&#x9;&#x9;balance -= uttak;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det er ikke nok spenn pÃ¥ kontoen til Ã¥ ta ut sÃ¥ mye!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addInterest() {&#xA;&#x9;&#x9;balance += ((balance * interestRate) / 100);&#xA;&#x9;}&#xA;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getInterestRate() {&#xA;&#x9;&#x9;return interestRate;&#xA;&#x9;}&#xA;&#xA;&#x9;public void setBalance(double balance) {&#xA;&#x9;&#x9;this.balance = balance;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public void setInterestRate(double interestRate) {&#xA;&#x9;&#x9;if (interestRate > 0) {&#xA;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Negativ rente Ã¦kke lov!&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="481" end="-396"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580304417694" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="79" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="100, 5);&#xA;&#x9;&#x9;System.out.println(konto);&#xA;&#x9;&#x9;konto.deposit(100);&#xA;&#x9;&#x9;System.out.println(konto);&#xA;&#x9;&#x9;konto.setInterestRate(-" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="1441" end="-92"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580304506343" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="79" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="withdraw(300" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="1538" end="-91"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580304523996" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="79" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="!" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="749" end="-870"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580304685213" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="79" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void deposit(double innskudd) {&#xA;&#x9;&#x9;if (innskudd > 0) {&#xA;&#x9;&#x9;balance += innskudd;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Innskudd kan ikke vÃ¦re negative!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void withdraw(double uttak) {&#xA;&#x9;&#x9;if ((balance - uttak) > 0) {&#xA;&#x9;&#x9;&#x9;balance -= uttak;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det er ikke nok spenn pÃ¥ kontoen!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addInterest() {&#xA;&#x9;&#x9;balance += ((balance * interestRate) / 100);&#xA;&#x9;}&#xA;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getInterestRate() {&#xA;&#x9;&#x9;return interestRate;&#xA;&#x9;}&#xA;&#xA;&#x9;public void setBalance(double balance) {&#xA;&#x9;&#x9;this.balance = balance;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;public void setInterestRate(double interestRate) {&#xA;&#x9;&#x9;if (interestRate > 0) {&#xA;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Negativ rente Ã¦kke lov!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return String.format(&quot;balanse = %.2f, rentefot = %.1f&quot;, balance, interestRate);&#xA;&#x9;}&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Account konto = new Account(100, 5);&#xA;&#x9;&#x9;System.out.println(konto);&#xA;&#x9;&#x9;konto.deposit(100);&#xA;&#x9;&#x9;System.out.println(konto);&#xA;&#x9;&#x9;konto.withdraw(15" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="392" end="-92"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580304841851" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="74" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void addInterest() {&#xA;&#x9;&#x9;balance += ((balance * interestRate) / 100);&#xA;&#x9;}&#xA;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getInterestRate() {&#xA;&#x9;&#x9;return interestRate;&#xA;&#x9;}&#xA;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="750" end="-581"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580305435816" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="74" errorCount="1" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ti" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="1319" end="-197"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="64" charStart="1378" charEnd="1380" severity="2" problemCategory="50" problemType="33554515"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580305446782" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="74" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="100" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="1319" end="-197"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580305466590" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="74" errorCount="1" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;hundre&quot;" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="1319" end="-197"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="64" charStart="1366" charEnd="1390" severity="2" problemCategory="50" problemType="134217858"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580305485919" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="74" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="100" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="1319" end="-197"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580306882790" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="74" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public void deposit(double innskudd) {&#xA;&#x9;&#x9;if (innskudd > 0) {&#xA;&#x9;&#x9;balance += innskudd;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Innskudd kan ikke vÃ¦re negative!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void withdraw(double uttak) {&#xA;&#x9;&#x9;if ((balance - uttak) > 0) {&#xA;&#x9;&#x9;&#x9;balance -= uttak;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det er ikke nok spenn pÃ¥ kontoen!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addInterest() {&#xA;&#x9;&#x9;balance += ((balance * interestRate) / 100);&#xA;&#x9;}&#xA;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getInterestRate() {&#xA;&#x9;&#x9;return interestRate;&#xA;&#x9;}&#xA;&#xA;&#x9;public " edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="392" end="-581"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580307869630" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="76" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.deposit(balance);&#xA;&#x9;&#x9;this.setInterestRate(interestRate);&#xA;&#x9;&#x9;// if (balance &lt; 0 || interestRate &lt; 0) {&#xA;&#x9;&#x9;// &#x9;throw new IllegalArgumentException(&quot;Hverken saldoen eller rentefoten kan vÃ¦re negative&quot;);&#xA;&#x9;&#x9;// }&#xA;&#x9;&#x9;// else {&#xA;&#x9;&#x9;//&#x9;this.balance = balance;&#xA;&#x9;&#x9;// &#x9;this.interestRate = interestRate;&#xA;&#x9;&#x9;// " edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="173" end="-1162"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580307902964" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="76" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-2" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="1430" end="-198"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580307919640" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="76" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="20, -" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="1430" end="-195"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580307933459" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="76" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="5" edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="1434" end="-194"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580307950452" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="76" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0" edit="/1/@proposals.0/@proposals.0/@attempts.18/@edit" start="1432" end="-197"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580308235685" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="76" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Uttaket pÃ¥ &quot; + uttak + &quot; er stÃ¸rre enn &quot; + balance" edit="/1/@proposals.0/@proposals.0/@attempts.19/@edit" start="799" end="-796"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580308348793" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="76" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//&#x9;&#x9; if (balance &lt; 0 || interestRate &lt; 0) {&#xA;//&#x9;&#x9; &#x9;throw new IllegalArgumentException(&quot;Hverken saldoen eller rentefoten kan vÃ¦re negative&quot;);&#xA;//&#x9;&#x9; }&#xA;//&#x9;&#x9; else {&#xA;//&#x9;&#x9;&#x9;this.balance = balance;&#xA;//&#x9;&#x9; &#x9;this.interestRate = interestRate;&#xA;//&#x9;&#x9; }&#xA;&#x9;}&#xA;&#xA;&#x9;public void deposit(double innskudd) {&#xA;&#x9;&#x9;if (innskudd > 0) {&#xA;&#x9;&#x9;&#x9;balance += innskudd;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Innskudd kan ikke vÃ¦re negative!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;public void withdraw(double uttak) {&#xA;&#x9;&#x9;if ((balance - uttak) > 0) {&#xA;&#x9;&#x9;&#x9;balance -= uttak;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Uttaket pÃ¥ &quot; + uttak + &quot; er stÃ¸rre enn &quot; + balance);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;public void addInterest() {&#xA;&#x9;&#x9;balance += ((balance * interestRate) / 100);&#xA;&#x9;}&#xA;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#xA;&#x9;public double getInterestRate() {&#xA;&#x9;&#x9;return interestRate;&#xA;&#x9;}&#xA;&#xA;&#x9;public void setInterestRate(double interestRate) {&#xA;&#x9;&#x9;if (interestRate > 0) {&#xA;&#x9;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Negativ rente Ã¦kke lov!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.20/@edit" start="234" end="-387"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580308410375" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="74" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Negativ rente Ã¦kke lov!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.interestRate = interestRate;" edit="/1/@proposals.0/@proposals.0/@attempts.21/@edit" start="1127" end="-391"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580308452812" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="72" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Uttaket pÃ¥ &quot; + uttak + &quot; er stÃ¸rre enn &quot; + balance);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;balance -= uttak;" edit="/1/@proposals.0/@proposals.0/@attempts.22/@edit" start="719" end="-774"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580308482065" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="70" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Innskudd kan ikke vÃ¦re negative!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;balance += innskudd;" edit="/1/@proposals.0/@proposals.0/@attempts.23/@edit" start="529" end="-965"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580308502913" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="70" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#x9;//&#x9;&#x9; if (balance &lt; 0 || interestRate &lt; 0) {&#xA;&#x9;&#x9;//&#x9;&#x9; &#x9;throw new IllegalArgumentException(&quot;Hverken saldoen eller rentefoten kan vÃ¦re negative&quot;);&#xA;&#x9;&#x9;//&#x9;&#x9; }&#xA;&#x9;&#x9;//&#x9;&#x9; else {&#xA;&#x9;&#x9;//&#x9;&#x9;&#x9;this.balance = balance;&#xA;&#x9;&#x9;//&#x9;&#x9; &#x9;this.interestRate = interestRate;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.24/@edit" start="234" end="-1140"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580308946563" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="70" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.25/@edit" start="1616"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580308965169" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="68" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (balance &lt; 0 || interestRate &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Hverken saldoen eller rentefoten kan vÃ¦re negative&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;this.balance = balance;&#xA;&#x9;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.26/@edit" start="173" end="-1135"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580309158086" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="66" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.balance = balance;&#xA;&#x9;&#x9;this.interestRate = interestRate;" edit="/1/@proposals.0/@proposals.0/@attempts.27/@edit" start="312" end="-1134"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580822205436" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="66" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.28/@edit" start="1504"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580303945752" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Hverken saldoen eller rentefoten kan være negative&#xD;
	at ovinger/encapsulation.Account.&lt;init>(Account.java:12)&#xD;
	at ovinger/encapsulation.Account.main(Account.java:52)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580304389292" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Hverken saldoen eller rentefoten kan være negative&#xD;
	at ovinger/encapsulation.Account.&lt;init>(Account.java:12)&#xD;
	at ovinger/encapsulation.Account.main(Account.java:69)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580304421428" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>balanse = 100.00, rentefot = 5.0&#xD;
balanse = 200.00, rentefot = 5.0&#xD;
Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Negativ rente ække lov!&#xD;
	at ovinger/encapsulation.Account.setInterestRate(Account.java:60)&#xD;
	at ovinger/encapsulation.Account.main(Account.java:73)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580304509057" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>balanse = 100.00, rentefot = 5.0&#xD;
balanse = 200.00, rentefot = 5.0&#xD;
Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Det er ikke nok spenn på kontoen til å ta ut så mye!&#xD;
	at ovinger/encapsulation.Account.withdraw(Account.java:34)&#xD;
	at ovinger/encapsulation.Account.main(Account.java:73)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580304525987" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>balanse = 100.00, rentefot = 5.0&#xD;
balanse = 200.00, rentefot = 5.0&#xD;
Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Det er ikke nok spenn på kontoen!&#xD;
	at ovinger/encapsulation.Account.withdraw(Account.java:34)&#xD;
	at ovinger/encapsulation.Account.main(Account.java:73)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580305433524" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	ti cannot be resolved to a variable
&#xD;
	at ovinger/encapsulation.Account.main(Account.java:64)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580305467619" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	The constructor Account(String, int) is undefined
&#xD;
	at ovinger/encapsulation.Account.main(Account.java:64)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580307900682" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Innskudd kan ikke være negative!&#xD;
	at ovinger/encapsulation.Account.deposit(Account.java:27)&#xD;
	at ovinger/encapsulation.Account.&lt;init>(Account.java:11)&#xD;
	at ovinger/encapsulation.Account.main(Account.java:66)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580307920948" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Negativ rente ække lov!&#xD;
	at ovinger/encapsulation.Account.setInterestRate(Account.java:57)&#xD;
	at ovinger/encapsulation.Account.&lt;init>(Account.java:12)&#xD;
	at ovinger/encapsulation.Account.main(Account.java:66)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580307934431" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>balanse = 20.00, rentefot = 5.0&#xD;
balanse = 120.00, rentefot = 5.0&#xD;
Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Det er ikke nok spenn på kontoen!&#xD;
	at ovinger/encapsulation.Account.withdraw(Account.java:36)&#xD;
	at ovinger/encapsulation.Account.main(Account.java:70)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580307951615" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>balanse = 200.00, rentefot = 5.0&#xD;
balanse = 300.00, rentefot = 5.0&#xD;
balanse = 150.00, rentefot = 5.0&#xD;
balanse = 157.50, rentefot = 5.0&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580304379808" completion="1.0" testRunName="encapsulation.AccountTest" successCount="6">
          <successTests>testAccount</successTests>
          <successTests>testSetInterestRate</successTests>
          <successTests>testWithdrawTooLargeAmount</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDepositNegativeAmount</successTests>
          <successTests>testDeposit</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580304698212" completion="1.0" testRunName="encapsulation.AccountTest" successCount="6">
          <successTests>testAccount</successTests>
          <successTests>testSetInterestRate</successTests>
          <successTests>testWithdrawTooLargeAmount</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDepositNegativeAmount</successTests>
          <successTests>testDeposit</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580305410904" completion="1.0" testRunName="encapsulation.AccountTest" successCount="6">
          <successTests>testAccount</successTests>
          <successTests>testSetInterestRate</successTests>
          <successTests>testWithdrawTooLargeAmount</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDepositNegativeAmount</successTests>
          <successTests>testDeposit</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580307887370" completion="1.0" testRunName="encapsulation.AccountTest" successCount="6">
          <successTests>testAccount</successTests>
          <successTests>testSetInterestRate</successTests>
          <successTests>testWithdrawTooLargeAmount</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDepositNegativeAmount</successTests>
          <successTests>testDeposit</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580308511814" completion="1.0" testRunName="encapsulation.AccountTest" successCount="6">
          <successTests>testAccount</successTests>
          <successTests>testSetInterestRate</successTests>
          <successTests>testWithdrawTooLargeAmount</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDepositNegativeAmount</successTests>
          <successTests>testDeposit</successTests>
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
