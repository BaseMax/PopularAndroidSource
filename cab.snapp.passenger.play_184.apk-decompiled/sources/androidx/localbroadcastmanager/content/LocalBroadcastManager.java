package androidx.localbroadcastmanager.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;

public final class LocalBroadcastManager {
    private static final boolean DEBUG = false;
    static final int MSG_EXEC_PENDING_BROADCASTS = 1;
    private static final String TAG = "LocalBroadcastManager";
    private static LocalBroadcastManager mInstance;
    private static final Object mLock = new Object();
    private final HashMap<String, ArrayList<ReceiverRecord>> mActions = new HashMap<>();
    private final Context mAppContext;
    private final Handler mHandler;
    private final ArrayList<BroadcastRecord> mPendingBroadcasts = new ArrayList<>();
    private final HashMap<BroadcastReceiver, ArrayList<ReceiverRecord>> mReceivers = new HashMap<>();

    static final class BroadcastRecord {
        final Intent intent;
        final ArrayList<ReceiverRecord> receivers;

        BroadcastRecord(Intent intent2, ArrayList<ReceiverRecord> arrayList) {
            this.intent = intent2;
            this.receivers = arrayList;
        }
    }

    static final class ReceiverRecord {
        boolean broadcasting;
        boolean dead;
        final IntentFilter filter;
        final BroadcastReceiver receiver;

        ReceiverRecord(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.filter = intentFilter;
            this.receiver = broadcastReceiver;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.receiver);
            sb.append(" filter=");
            sb.append(this.filter);
            if (this.dead) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    public static LocalBroadcastManager getInstance(Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (mLock) {
            if (mInstance == null) {
                mInstance = new LocalBroadcastManager(context.getApplicationContext());
            }
            localBroadcastManager = mInstance;
        }
        return localBroadcastManager;
    }

    private LocalBroadcastManager(Context context) {
        this.mAppContext = context;
        this.mHandler = new Handler(context.getMainLooper()) {
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    super.handleMessage(message);
                } else {
                    LocalBroadcastManager.this.executePendingBroadcasts();
                }
            }
        };
    }

    public final void registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.mReceivers) {
            ReceiverRecord receiverRecord = new ReceiverRecord(intentFilter, broadcastReceiver);
            ArrayList arrayList = this.mReceivers.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList(1);
                this.mReceivers.put(broadcastReceiver, arrayList);
            }
            arrayList.add(receiverRecord);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList arrayList2 = this.mActions.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList(1);
                    this.mActions.put(action, arrayList2);
                }
                arrayList2.add(receiverRecord);
            }
        }
    }

    public final void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        synchronized (this.mReceivers) {
            ArrayList remove = this.mReceivers.remove(broadcastReceiver);
            if (remove != null) {
                for (int size = remove.size() - 1; size >= 0; size--) {
                    ReceiverRecord receiverRecord = (ReceiverRecord) remove.get(size);
                    receiverRecord.dead = true;
                    for (int i = 0; i < receiverRecord.filter.countActions(); i++) {
                        String action = receiverRecord.filter.getAction(i);
                        ArrayList arrayList = this.mActions.get(action);
                        if (arrayList != null) {
                            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                                ReceiverRecord receiverRecord2 = (ReceiverRecord) arrayList.get(size2);
                                if (receiverRecord2.receiver == broadcastReceiver) {
                                    receiverRecord2.dead = true;
                                    arrayList.remove(size2);
                                }
                            }
                            if (arrayList.size() <= 0) {
                                this.mActions.remove(action);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0108, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x010b, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean sendBroadcast(android.content.Intent r23) {
        /*
            r22 = this;
            r1 = r22
            r0 = r23
            java.util.HashMap<android.content.BroadcastReceiver, java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$ReceiverRecord>> r2 = r1.mReceivers
            monitor-enter(r2)
            java.lang.String r10 = r23.getAction()     // Catch:{ all -> 0x010c }
            android.content.Context r3 = r1.mAppContext     // Catch:{ all -> 0x010c }
            android.content.ContentResolver r3 = r3.getContentResolver()     // Catch:{ all -> 0x010c }
            java.lang.String r11 = r0.resolveTypeIfNeeded(r3)     // Catch:{ all -> 0x010c }
            android.net.Uri r12 = r23.getData()     // Catch:{ all -> 0x010c }
            java.lang.String r13 = r23.getScheme()     // Catch:{ all -> 0x010c }
            java.util.Set r14 = r23.getCategories()     // Catch:{ all -> 0x010c }
            int r3 = r23.getFlags()     // Catch:{ all -> 0x010c }
            r3 = r3 & 8
            r9 = 1
            if (r3 == 0) goto L_0x002d
            r16 = 1
            goto L_0x002f
        L_0x002d:
            r16 = 0
        L_0x002f:
            if (r16 == 0) goto L_0x004b
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x010c }
            java.lang.String r4 = "Resolving type "
            r3.<init>(r4)     // Catch:{ all -> 0x010c }
            r3.append(r11)     // Catch:{ all -> 0x010c }
            java.lang.String r4 = " scheme "
            r3.append(r4)     // Catch:{ all -> 0x010c }
            r3.append(r13)     // Catch:{ all -> 0x010c }
            java.lang.String r4 = " of intent "
            r3.append(r4)     // Catch:{ all -> 0x010c }
            r3.append(r0)     // Catch:{ all -> 0x010c }
        L_0x004b:
            java.util.HashMap<java.lang.String, java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$ReceiverRecord>> r3 = r1.mActions     // Catch:{ all -> 0x010c }
            java.lang.String r4 = r23.getAction()     // Catch:{ all -> 0x010c }
            java.lang.Object r3 = r3.get(r4)     // Catch:{ all -> 0x010c }
            r8 = r3
            java.util.ArrayList r8 = (java.util.ArrayList) r8     // Catch:{ all -> 0x010c }
            if (r8 == 0) goto L_0x0109
            if (r16 == 0) goto L_0x0066
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x010c }
            java.lang.String r4 = "Action list: "
            r3.<init>(r4)     // Catch:{ all -> 0x010c }
            r3.append(r8)     // Catch:{ all -> 0x010c }
        L_0x0066:
            r3 = 0
            r6 = r3
            r7 = 0
        L_0x0069:
            int r3 = r8.size()     // Catch:{ all -> 0x010c }
            if (r7 >= r3) goto L_0x00d9
            java.lang.Object r3 = r8.get(r7)     // Catch:{ all -> 0x010c }
            r5 = r3
            androidx.localbroadcastmanager.content.LocalBroadcastManager$ReceiverRecord r5 = (androidx.localbroadcastmanager.content.LocalBroadcastManager.ReceiverRecord) r5     // Catch:{ all -> 0x010c }
            if (r16 == 0) goto L_0x0084
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x010c }
            java.lang.String r4 = "Matching against filter "
            r3.<init>(r4)     // Catch:{ all -> 0x010c }
            android.content.IntentFilter r4 = r5.filter     // Catch:{ all -> 0x010c }
            r3.append(r4)     // Catch:{ all -> 0x010c }
        L_0x0084:
            boolean r3 = r5.broadcasting     // Catch:{ all -> 0x010c }
            if (r3 == 0) goto L_0x0093
            r19 = r7
            r20 = r8
            r18 = r10
            r21 = r11
            r11 = 1
            r10 = r6
            goto L_0x00ce
        L_0x0093:
            android.content.IntentFilter r3 = r5.filter     // Catch:{ all -> 0x010c }
            java.lang.String r17 = "LocalBroadcastManager"
            r4 = r10
            r15 = r5
            r5 = r11
            r18 = r10
            r10 = r6
            r6 = r13
            r19 = r7
            r7 = r12
            r20 = r8
            r8 = r14
            r21 = r11
            r11 = 1
            r9 = r17
            int r3 = r3.match(r4, r5, r6, r7, r8, r9)     // Catch:{ all -> 0x010c }
            if (r3 < 0) goto L_0x00ce
            if (r16 == 0) goto L_0x00bf
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x010c }
            java.lang.String r5 = "  Filter matched!  match=0x"
            r4.<init>(r5)     // Catch:{ all -> 0x010c }
            java.lang.String r3 = java.lang.Integer.toHexString(r3)     // Catch:{ all -> 0x010c }
            r4.append(r3)     // Catch:{ all -> 0x010c }
        L_0x00bf:
            if (r10 != 0) goto L_0x00c7
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch:{ all -> 0x010c }
            r6.<init>()     // Catch:{ all -> 0x010c }
            goto L_0x00c8
        L_0x00c7:
            r6 = r10
        L_0x00c8:
            r6.add(r15)     // Catch:{ all -> 0x010c }
            r15.broadcasting = r11     // Catch:{ all -> 0x010c }
            goto L_0x00cf
        L_0x00ce:
            r6 = r10
        L_0x00cf:
            int r7 = r19 + 1
            r10 = r18
            r8 = r20
            r11 = r21
            r9 = 1
            goto L_0x0069
        L_0x00d9:
            r10 = r6
            r11 = 1
            if (r10 == 0) goto L_0x0109
            r3 = 0
        L_0x00de:
            int r4 = r10.size()     // Catch:{ all -> 0x010c }
            if (r3 >= r4) goto L_0x00f0
            java.lang.Object r4 = r10.get(r3)     // Catch:{ all -> 0x010c }
            androidx.localbroadcastmanager.content.LocalBroadcastManager$ReceiverRecord r4 = (androidx.localbroadcastmanager.content.LocalBroadcastManager.ReceiverRecord) r4     // Catch:{ all -> 0x010c }
            r5 = 0
            r4.broadcasting = r5     // Catch:{ all -> 0x010c }
            int r3 = r3 + 1
            goto L_0x00de
        L_0x00f0:
            java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$BroadcastRecord> r3 = r1.mPendingBroadcasts     // Catch:{ all -> 0x010c }
            androidx.localbroadcastmanager.content.LocalBroadcastManager$BroadcastRecord r4 = new androidx.localbroadcastmanager.content.LocalBroadcastManager$BroadcastRecord     // Catch:{ all -> 0x010c }
            r4.<init>(r0, r10)     // Catch:{ all -> 0x010c }
            r3.add(r4)     // Catch:{ all -> 0x010c }
            android.os.Handler r0 = r1.mHandler     // Catch:{ all -> 0x010c }
            boolean r0 = r0.hasMessages(r11)     // Catch:{ all -> 0x010c }
            if (r0 != 0) goto L_0x0107
            android.os.Handler r0 = r1.mHandler     // Catch:{ all -> 0x010c }
            r0.sendEmptyMessage(r11)     // Catch:{ all -> 0x010c }
        L_0x0107:
            monitor-exit(r2)     // Catch:{ all -> 0x010c }
            return r11
        L_0x0109:
            monitor-exit(r2)     // Catch:{ all -> 0x010c }
            r0 = 0
            return r0
        L_0x010c:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x010c }
            goto L_0x0110
        L_0x010f:
            throw r0
        L_0x0110:
            goto L_0x010f
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.localbroadcastmanager.content.LocalBroadcastManager.sendBroadcast(android.content.Intent):boolean");
    }

    public final void sendBroadcastSync(Intent intent) {
        if (sendBroadcast(intent)) {
            executePendingBroadcasts();
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001d, code lost:
        if (r2 >= r1.length) goto L_0x0000;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001f, code lost:
        r3 = r1[r2];
        r4 = r3.receivers.size();
        r5 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0028, code lost:
        if (r5 >= r4) goto L_0x0042;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002a, code lost:
        r6 = r3.receivers.get(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0034, code lost:
        if (r6.dead != false) goto L_0x003f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0036, code lost:
        r6.receiver.onReceive(r9.mAppContext, r3.intent);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x003f, code lost:
        r5 = r5 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0042, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001a, code lost:
        r2 = 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void executePendingBroadcasts() {
        /*
            r9 = this;
        L_0x0000:
            java.util.HashMap<android.content.BroadcastReceiver, java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$ReceiverRecord>> r0 = r9.mReceivers
            monitor-enter(r0)
            java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$BroadcastRecord> r1 = r9.mPendingBroadcasts     // Catch:{ all -> 0x0045 }
            int r1 = r1.size()     // Catch:{ all -> 0x0045 }
            if (r1 > 0) goto L_0x000d
            monitor-exit(r0)     // Catch:{ all -> 0x0045 }
            return
        L_0x000d:
            androidx.localbroadcastmanager.content.LocalBroadcastManager$BroadcastRecord[] r1 = new androidx.localbroadcastmanager.content.LocalBroadcastManager.BroadcastRecord[r1]     // Catch:{ all -> 0x0045 }
            java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$BroadcastRecord> r2 = r9.mPendingBroadcasts     // Catch:{ all -> 0x0045 }
            r2.toArray(r1)     // Catch:{ all -> 0x0045 }
            java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$BroadcastRecord> r2 = r9.mPendingBroadcasts     // Catch:{ all -> 0x0045 }
            r2.clear()     // Catch:{ all -> 0x0045 }
            monitor-exit(r0)     // Catch:{ all -> 0x0045 }
            r0 = 0
            r2 = 0
        L_0x001c:
            int r3 = r1.length
            if (r2 >= r3) goto L_0x0000
            r3 = r1[r2]
            java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$ReceiverRecord> r4 = r3.receivers
            int r4 = r4.size()
            r5 = 0
        L_0x0028:
            if (r5 >= r4) goto L_0x0042
            java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$ReceiverRecord> r6 = r3.receivers
            java.lang.Object r6 = r6.get(r5)
            androidx.localbroadcastmanager.content.LocalBroadcastManager$ReceiverRecord r6 = (androidx.localbroadcastmanager.content.LocalBroadcastManager.ReceiverRecord) r6
            boolean r7 = r6.dead
            if (r7 != 0) goto L_0x003f
            android.content.BroadcastReceiver r6 = r6.receiver
            android.content.Context r7 = r9.mAppContext
            android.content.Intent r8 = r3.intent
            r6.onReceive(r7, r8)
        L_0x003f:
            int r5 = r5 + 1
            goto L_0x0028
        L_0x0042:
            int r2 = r2 + 1
            goto L_0x001c
        L_0x0045:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0045 }
            goto L_0x0049
        L_0x0048:
            throw r1
        L_0x0049:
            goto L_0x0048
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.localbroadcastmanager.content.LocalBroadcastManager.executePendingBroadcasts():void");
    }
}
