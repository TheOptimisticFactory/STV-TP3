package mop;
import app.Bank;
import java.io.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.locks.*;
import java.lang.ref.*;
import com.runtimeverification.rvmonitor.java.rt.*;
import com.runtimeverification.rvmonitor.java.rt.ref.*;
import com.runtimeverification.rvmonitor.java.rt.table.*;
import com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractIndexingTree;
import com.runtimeverification.rvmonitor.java.rt.tablebase.SetEventDelegator;
import com.runtimeverification.rvmonitor.java.rt.tablebase.TableAdopter.Tuple2;
import com.runtimeverification.rvmonitor.java.rt.tablebase.TableAdopter.Tuple3;
import com.runtimeverification.rvmonitor.java.rt.tablebase.IDisableHolder;
import com.runtimeverification.rvmonitor.java.rt.tablebase.IMonitor;
import com.runtimeverification.rvmonitor.java.rt.tablebase.DisableHolder;
import com.runtimeverification.rvmonitor.java.rt.tablebase.TerminatedMonitorCleaner;
import java.util.concurrent.atomic.AtomicInteger;
import org.aspectj.lang.*;

final class BankBindingMonitor_Set extends com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractMonitorSet<BankBindingMonitor> {

	BankBindingMonitor_Set(){
		this.size = 0;
		this.elements = new BankBindingMonitor[4];
	}
	final void event_close(Bank b) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			BankBindingMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final BankBindingMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_close(b);
				if(monitorfinalMonitor.Prop_1_Category_approved) {
					monitorfinalMonitor.Prop_1_handler_approved();
				}
				if(monitorfinalMonitor.Prop_1_Category_money) {
					monitorfinalMonitor.Prop_1_handler_money();
				}
				if(monitorfinalMonitor.Prop_1_Category_open_success) {
					monitorfinalMonitor.Prop_1_handler_open_success();
				}
				if(monitorfinalMonitor.Prop_1_Category_open_fail) {
					monitorfinalMonitor.Prop_1_handler_open_fail();
				}
				if(monitorfinalMonitor.Prop_1_Category_draw) {
					monitorfinalMonitor.Prop_1_handler_draw();
				}
			}
		}
		for(int i = numAlive; i < this.size; i++){
			this.elements[i] = null;
		}
		size = numAlive;
	}
	final void event_open(Bank b) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			BankBindingMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final BankBindingMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_open(b);
				if(monitorfinalMonitor.Prop_1_Category_approved) {
					monitorfinalMonitor.Prop_1_handler_approved();
				}
				if(monitorfinalMonitor.Prop_1_Category_money) {
					monitorfinalMonitor.Prop_1_handler_money();
				}
				if(monitorfinalMonitor.Prop_1_Category_open_success) {
					monitorfinalMonitor.Prop_1_handler_open_success();
				}
				if(monitorfinalMonitor.Prop_1_Category_open_fail) {
					monitorfinalMonitor.Prop_1_handler_open_fail();
				}
				if(monitorfinalMonitor.Prop_1_Category_draw) {
					monitorfinalMonitor.Prop_1_handler_draw();
				}
			}
		}
		for(int i = numAlive; i < this.size; i++){
			this.elements[i] = null;
		}
		size = numAlive;
	}
	final void event_isApproved(Bank b) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			BankBindingMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final BankBindingMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_isApproved(b);
				if(monitorfinalMonitor.Prop_1_Category_approved) {
					monitorfinalMonitor.Prop_1_handler_approved();
				}
				if(monitorfinalMonitor.Prop_1_Category_money) {
					monitorfinalMonitor.Prop_1_handler_money();
				}
				if(monitorfinalMonitor.Prop_1_Category_open_success) {
					monitorfinalMonitor.Prop_1_handler_open_success();
				}
				if(monitorfinalMonitor.Prop_1_Category_open_fail) {
					monitorfinalMonitor.Prop_1_handler_open_fail();
				}
				if(monitorfinalMonitor.Prop_1_Category_draw) {
					monitorfinalMonitor.Prop_1_handler_draw();
				}
			}
		}
		for(int i = numAlive; i < this.size; i++){
			this.elements[i] = null;
		}
		size = numAlive;
	}
	final void event_withdraw(int x, int y, Bank b) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			BankBindingMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final BankBindingMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_withdraw(x, y, b);
				if(monitorfinalMonitor.Prop_1_Category_approved) {
					monitorfinalMonitor.Prop_1_handler_approved();
				}
				if(monitorfinalMonitor.Prop_1_Category_money) {
					monitorfinalMonitor.Prop_1_handler_money();
				}
				if(monitorfinalMonitor.Prop_1_Category_open_success) {
					monitorfinalMonitor.Prop_1_handler_open_success();
				}
				if(monitorfinalMonitor.Prop_1_Category_open_fail) {
					monitorfinalMonitor.Prop_1_handler_open_fail();
				}
				if(monitorfinalMonitor.Prop_1_Category_draw) {
					monitorfinalMonitor.Prop_1_handler_draw();
				}
			}
		}
		for(int i = numAlive; i < this.size; i++){
			this.elements[i] = null;
		}
		size = numAlive;
	}
}

class BankBindingMonitor extends com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractAtomicMonitor implements Cloneable, com.runtimeverification.rvmonitor.java.rt.RVMObject {
	protected Object clone() {
		try {
			BankBindingMonitor ret = (BankBindingMonitor) super.clone();
			return ret;
		}
		catch (CloneNotSupportedException e) {
			throw new InternalError(e.toString());
		}
	}

	int approved;

	int withdrawAmount;

	static final int Prop_1_transition_close[] = {6, 0, 6, 0, 6, 0, 6};;
	static final int Prop_1_transition_open[] = {1, 3, 1, 3, 1, 3, 6};;
	static final int Prop_1_transition_isApproved[] = {4, 1, 4, 1, 4, 1, 6};;
	static final int Prop_1_transition_withdraw[] = {2, 5, 2, 5, 2, 5, 6};;

	volatile boolean Prop_1_Category_approved = false;
	volatile boolean Prop_1_Category_money = false;
	volatile boolean Prop_1_Category_open_success = false;
	volatile boolean Prop_1_Category_open_fail = false;
	volatile boolean Prop_1_Category_draw = false;

	private final AtomicInteger pairValue;

	BankBindingMonitor() {
		this.pairValue = new AtomicInteger(this.calculatePairValue(-1, 0) ) ;

	}

	@Override public final int getState() {
		return this.getState(this.pairValue.get() ) ;
	}
	@Override public final int getLastEvent() {
		return this.getLastEvent(this.pairValue.get() ) ;
	}
	private final int getState(int pairValue) {
		return (pairValue & 7) ;
	}
	private final int getLastEvent(int pairValue) {
		return (pairValue >> 3) ;
	}
	private final int calculatePairValue(int lastEvent, int state) {
		return (((lastEvent + 1) << 3) | state) ;
	}

	private final int handleEvent(int eventId, int[] table) {
		int nextstate;
		while (true) {
			int oldpairvalue = this.pairValue.get() ;
			int oldstate = this.getState(oldpairvalue) ;
			nextstate = table [ oldstate ];
			int nextpairvalue = this.calculatePairValue(eventId, nextstate) ;
			if (this.pairValue.compareAndSet(oldpairvalue, nextpairvalue) ) {
				break;
			}
		}
		return nextstate;
	}

	final boolean Prop_1_event_close(Bank b) {
		{
			approved = 0;
			withdrawAmount = 0;
		}

		int nextstate = this.handleEvent(0, Prop_1_transition_close) ;
		this.Prop_1_Category_approved = nextstate == 4;
		this.Prop_1_Category_money = nextstate == 5;
		this.Prop_1_Category_open_success = nextstate == 1;
		this.Prop_1_Category_open_fail = nextstate == 3;
		this.Prop_1_Category_draw = nextstate == 2;

		return true;
	}

	final boolean Prop_1_event_open(Bank b) {
		{
		}

		int nextstate = this.handleEvent(1, Prop_1_transition_open) ;
		this.Prop_1_Category_approved = nextstate == 4;
		this.Prop_1_Category_money = nextstate == 5;
		this.Prop_1_Category_open_success = nextstate == 1;
		this.Prop_1_Category_open_fail = nextstate == 3;
		this.Prop_1_Category_draw = nextstate == 2;

		return true;
	}

	final boolean Prop_1_event_isApproved(Bank b) {
		{
			if (!b.m_accounts.isEmpty()) {
				approved = b.m_accounts.firstElement().m_authorizedFor;
			}
		}

		int nextstate = this.handleEvent(2, Prop_1_transition_isApproved) ;
		this.Prop_1_Category_approved = nextstate == 4;
		this.Prop_1_Category_money = nextstate == 5;
		this.Prop_1_Category_open_success = nextstate == 1;
		this.Prop_1_Category_open_fail = nextstate == 3;
		this.Prop_1_Category_draw = nextstate == 2;

		return true;
	}

	final boolean Prop_1_event_withdraw(int x, int y, Bank b) {
		{
			withdrawAmount = y;
		}

		int nextstate = this.handleEvent(3, Prop_1_transition_withdraw) ;
		this.Prop_1_Category_approved = nextstate == 4;
		this.Prop_1_Category_money = nextstate == 5;
		this.Prop_1_Category_open_success = nextstate == 1;
		this.Prop_1_Category_open_fail = nextstate == 3;
		this.Prop_1_Category_draw = nextstate == 2;

		return true;
	}

	final void Prop_1_handler_approved (){
		{
			System.out.println("JAVAMOP : Tried to approve amount but no account is opened !");
		}

	}

	final void Prop_1_handler_money (){
		{
			if (this.approved >= withdrawAmount || this.withdrawAmount < 1000) {
				System.out.println("JAVAMOP : withdraw authorized for " + this.withdrawAmount);
			} else {
				System.out.println("JAVAMOP : withdraw denied for " + this.withdrawAmount);
			}
			this.approved = 0;
			this.withdrawAmount = 0;
		}

	}

	final void Prop_1_handler_open_success (){
		{
			System.out.println("JAVAMOP : Account opened and has approval = " + this.approved);
		}

	}

	final void Prop_1_handler_open_fail (){
		{
			System.out.println("JAVAMOP : A bank account is already opened!");
		}

	}

	final void Prop_1_handler_draw (){
		{
			System.out.println("JAVAMOP : withdraw :" + this.approved);
		}

	}

	final void reset() {
		this.pairValue.set(this.calculatePairValue(-1, 0) ) ;

		Prop_1_Category_approved = false;
		Prop_1_Category_money = false;
		Prop_1_Category_open_success = false;
		Prop_1_Category_open_fail = false;
		Prop_1_Category_draw = false;
	}

	// RVMRef_b was suppressed to reduce memory overhead

	//alive_parameters_0 = [Bank b]
	boolean alive_parameters_0 = true;

	@Override
	protected final void terminateInternal(int idnum) {
		int lastEvent = this.getLastEvent();

		switch(idnum){
			case 0:
			alive_parameters_0 = false;
			break;
		}
		switch(lastEvent) {
			case -1:
			return;
			case 0:
			//close
			//alive_b
			if(!(alive_parameters_0)){
				RVM_terminated = true;
				return;
			}
			break;

			case 1:
			//open
			//alive_b
			if(!(alive_parameters_0)){
				RVM_terminated = true;
				return;
			}
			break;

			case 2:
			//isApproved
			//alive_b
			if(!(alive_parameters_0)){
				RVM_terminated = true;
				return;
			}
			break;

			case 3:
			//withdraw
			//alive_b
			if(!(alive_parameters_0)){
				RVM_terminated = true;
				return;
			}
			break;

		}
		return;
	}

	public static int getNumberOfEvents() {
		return 4;
	}

	public static int getNumberOfStates() {
		return 7;
	}

}

class BankRuntimeMonitor implements com.runtimeverification.rvmonitor.java.rt.RVMObject {
	private static com.runtimeverification.rvmonitor.java.rt.map.RVMMapManager BankMapManager;
	static {
		BankMapManager = new com.runtimeverification.rvmonitor.java.rt.map.RVMMapManager();
		BankMapManager.start();
	}

	// Declarations for the Lock
	static final ReentrantLock Bank_RVMLock = new ReentrantLock();
	static final Condition Bank_RVMLock_cond = Bank_RVMLock.newCondition();

	private static boolean BankBinding_activated = false;

	// Declarations for Indexing Trees
	private static Object BankBinding_b_Map_cachekey_b;
	private static BankBindingMonitor BankBinding_b_Map_cachevalue;
	private static final MapOfMonitor<BankBindingMonitor> BankBinding_b_Map = new MapOfMonitor<BankBindingMonitor>(0) ;

	public static int cleanUp() {
		int collected = 0;
		// indexing trees
		collected += BankBinding_b_Map.cleanUpUnnecessaryMappings();
		return collected;
	}

	// Removing terminated monitors from partitioned sets
	static {
		TerminatedMonitorCleaner.start() ;
	}
	// Setting the behavior of the runtime library according to the compile-time option
	static {
		RuntimeOption.enableFineGrainedLock(false) ;
	}

	public static final void closeEvent(Bank b) {
		BankBinding_activated = true;
		while (!Bank_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_b = null;
		MapOfMonitor<BankBindingMonitor> matchedLastMap = null;
		BankBindingMonitor matchedEntry = null;
		boolean cachehit = false;
		if ((b == BankBinding_b_Map_cachekey_b) ) {
			matchedEntry = BankBinding_b_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_b = new CachedWeakReference(b) ;
			{
				// FindOrCreateEntry
				MapOfMonitor<BankBindingMonitor> itmdMap = BankBinding_b_Map;
				matchedLastMap = itmdMap;
				BankBindingMonitor node_b = BankBinding_b_Map.getNodeEquivalent(wr_b) ;
				matchedEntry = node_b;
			}
		}
		// D(X) main:1
		if ((matchedEntry == null) ) {
			if ((wr_b == null) ) {
				wr_b = new CachedWeakReference(b) ;
			}
			// D(X) main:4
			BankBindingMonitor created = new BankBindingMonitor() ;
			matchedEntry = created;
			matchedLastMap.putNode(wr_b, created) ;
		}
		// D(X) main:8--9
		final BankBindingMonitor matchedEntryfinalMonitor = matchedEntry;
		matchedEntry.Prop_1_event_close(b);
		if(matchedEntryfinalMonitor.Prop_1_Category_approved) {
			matchedEntryfinalMonitor.Prop_1_handler_approved();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_money) {
			matchedEntryfinalMonitor.Prop_1_handler_money();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_open_success) {
			matchedEntryfinalMonitor.Prop_1_handler_open_success();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_open_fail) {
			matchedEntryfinalMonitor.Prop_1_handler_open_fail();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_draw) {
			matchedEntryfinalMonitor.Prop_1_handler_draw();
		}

		if ((cachehit == false) ) {
			BankBinding_b_Map_cachekey_b = b;
			BankBinding_b_Map_cachevalue = matchedEntry;
		}

		Bank_RVMLock.unlock();
	}

	public static final void openEvent(Bank b) {
		BankBinding_activated = true;
		while (!Bank_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_b = null;
		MapOfMonitor<BankBindingMonitor> matchedLastMap = null;
		BankBindingMonitor matchedEntry = null;
		boolean cachehit = false;
		if ((b == BankBinding_b_Map_cachekey_b) ) {
			matchedEntry = BankBinding_b_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_b = new CachedWeakReference(b) ;
			{
				// FindOrCreateEntry
				MapOfMonitor<BankBindingMonitor> itmdMap = BankBinding_b_Map;
				matchedLastMap = itmdMap;
				BankBindingMonitor node_b = BankBinding_b_Map.getNodeEquivalent(wr_b) ;
				matchedEntry = node_b;
			}
		}
		// D(X) main:1
		if ((matchedEntry == null) ) {
			if ((wr_b == null) ) {
				wr_b = new CachedWeakReference(b) ;
			}
			// D(X) main:4
			BankBindingMonitor created = new BankBindingMonitor() ;
			matchedEntry = created;
			matchedLastMap.putNode(wr_b, created) ;
		}
		// D(X) main:8--9
		final BankBindingMonitor matchedEntryfinalMonitor = matchedEntry;
		matchedEntry.Prop_1_event_open(b);
		if(matchedEntryfinalMonitor.Prop_1_Category_approved) {
			matchedEntryfinalMonitor.Prop_1_handler_approved();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_money) {
			matchedEntryfinalMonitor.Prop_1_handler_money();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_open_success) {
			matchedEntryfinalMonitor.Prop_1_handler_open_success();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_open_fail) {
			matchedEntryfinalMonitor.Prop_1_handler_open_fail();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_draw) {
			matchedEntryfinalMonitor.Prop_1_handler_draw();
		}

		if ((cachehit == false) ) {
			BankBinding_b_Map_cachekey_b = b;
			BankBinding_b_Map_cachevalue = matchedEntry;
		}

		Bank_RVMLock.unlock();
	}

	public static final void isApprovedEvent(Bank b) {
		BankBinding_activated = true;
		while (!Bank_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_b = null;
		MapOfMonitor<BankBindingMonitor> matchedLastMap = null;
		BankBindingMonitor matchedEntry = null;
		boolean cachehit = false;
		if ((b == BankBinding_b_Map_cachekey_b) ) {
			matchedEntry = BankBinding_b_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_b = new CachedWeakReference(b) ;
			{
				// FindOrCreateEntry
				MapOfMonitor<BankBindingMonitor> itmdMap = BankBinding_b_Map;
				matchedLastMap = itmdMap;
				BankBindingMonitor node_b = BankBinding_b_Map.getNodeEquivalent(wr_b) ;
				matchedEntry = node_b;
			}
		}
		// D(X) main:1
		if ((matchedEntry == null) ) {
			if ((wr_b == null) ) {
				wr_b = new CachedWeakReference(b) ;
			}
			// D(X) main:4
			BankBindingMonitor created = new BankBindingMonitor() ;
			matchedEntry = created;
			matchedLastMap.putNode(wr_b, created) ;
		}
		// D(X) main:8--9
		final BankBindingMonitor matchedEntryfinalMonitor = matchedEntry;
		matchedEntry.Prop_1_event_isApproved(b);
		if(matchedEntryfinalMonitor.Prop_1_Category_approved) {
			matchedEntryfinalMonitor.Prop_1_handler_approved();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_money) {
			matchedEntryfinalMonitor.Prop_1_handler_money();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_open_success) {
			matchedEntryfinalMonitor.Prop_1_handler_open_success();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_open_fail) {
			matchedEntryfinalMonitor.Prop_1_handler_open_fail();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_draw) {
			matchedEntryfinalMonitor.Prop_1_handler_draw();
		}

		if ((cachehit == false) ) {
			BankBinding_b_Map_cachekey_b = b;
			BankBinding_b_Map_cachevalue = matchedEntry;
		}

		Bank_RVMLock.unlock();
	}

	public static final void withdrawEvent(int x, int y, Bank b) {
		BankBinding_activated = true;
		while (!Bank_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_b = null;
		MapOfMonitor<BankBindingMonitor> matchedLastMap = null;
		BankBindingMonitor matchedEntry = null;
		boolean cachehit = false;
		if ((b == BankBinding_b_Map_cachekey_b) ) {
			matchedEntry = BankBinding_b_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_b = new CachedWeakReference(b) ;
			{
				// FindOrCreateEntry
				MapOfMonitor<BankBindingMonitor> itmdMap = BankBinding_b_Map;
				matchedLastMap = itmdMap;
				BankBindingMonitor node_b = BankBinding_b_Map.getNodeEquivalent(wr_b) ;
				matchedEntry = node_b;
			}
		}
		// D(X) main:1
		if ((matchedEntry == null) ) {
			if ((wr_b == null) ) {
				wr_b = new CachedWeakReference(b) ;
			}
			// D(X) main:4
			BankBindingMonitor created = new BankBindingMonitor() ;
			matchedEntry = created;
			matchedLastMap.putNode(wr_b, created) ;
		}
		// D(X) main:8--9
		final BankBindingMonitor matchedEntryfinalMonitor = matchedEntry;
		matchedEntry.Prop_1_event_withdraw(x, y, b);
		if(matchedEntryfinalMonitor.Prop_1_Category_approved) {
			matchedEntryfinalMonitor.Prop_1_handler_approved();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_money) {
			matchedEntryfinalMonitor.Prop_1_handler_money();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_open_success) {
			matchedEntryfinalMonitor.Prop_1_handler_open_success();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_open_fail) {
			matchedEntryfinalMonitor.Prop_1_handler_open_fail();
		}
		if(matchedEntryfinalMonitor.Prop_1_Category_draw) {
			matchedEntryfinalMonitor.Prop_1_handler_draw();
		}

		if ((cachehit == false) ) {
			BankBinding_b_Map_cachekey_b = b;
			BankBinding_b_Map_cachevalue = matchedEntry;
		}

		Bank_RVMLock.unlock();
	}

}


aspect BaseAspect {
	pointcut notwithin() :
	!within(sun..*) &&
	!within(java..*) &&
	!within(javax..*) &&
	!within(com.sun..*) &&
	!within(org.dacapo.harness..*) &&
	!within(org.apache.commons..*) &&
	!within(org.apache.geronimo..*) &&
	!within(net.sf.cglib..*) &&
	!within(mop..*) &&
	!within(javamoprt..*) &&
	!within(rvmonitorrt..*) &&
	!within(com.runtimeverification..*);
}

public aspect BankMonitorAspect implements com.runtimeverification.rvmonitor.java.rt.RVMObject {
	public BankMonitorAspect(){
	}

	// Declarations for the Lock
	static ReentrantLock Bank_MOPLock = new ReentrantLock();
	static Condition Bank_MOPLock_cond = Bank_MOPLock.newCondition();

	pointcut MOP_CommonPointCut() : !within(com.runtimeverification.rvmonitor.java.rt.RVMObject+) && !adviceexecution() && BaseAspect.notwithin();
	pointcut BankBinding_withdraw(int x, int y, Bank b) : (call(* Bank.withdraw(int, int)) && target(b) && args(x, y)) && MOP_CommonPointCut();
	before (int x, int y, Bank b) : BankBinding_withdraw(x, y, b) {
		BankRuntimeMonitor.withdrawEvent(x, y, b);
	}

	pointcut BankBinding_open(Bank b) : (call(* Bank.open(int)) && target(b)) && MOP_CommonPointCut();
	before (Bank b) : BankBinding_open(b) {
		BankRuntimeMonitor.openEvent(b);
	}

	pointcut BankBinding_close(Bank b) : (call(* Bank.close(int)) && target(b)) && MOP_CommonPointCut();
	before (Bank b) : BankBinding_close(b) {
		BankRuntimeMonitor.closeEvent(b);
	}

	pointcut BankBinding_isApproved(Bank b) : (call(* Bank.isApproved(int, int)) && target(b)) && MOP_CommonPointCut();
	after (Bank b) : BankBinding_isApproved(b) {
		BankRuntimeMonitor.isApprovedEvent(b);
	}

}
