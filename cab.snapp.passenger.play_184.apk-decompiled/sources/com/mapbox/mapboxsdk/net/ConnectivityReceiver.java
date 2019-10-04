package com.mapbox.mapboxsdk.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.mapbox.mapboxsdk.log.Logger;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class ConnectivityReceiver extends BroadcastReceiver {
    private static ConnectivityReceiver INSTANCE = null;
    private static final String LOG_CONNECTED = "connected - true";
    private static final String LOG_NOT_CONNECTED = "connected - false";
    private static final String TAG = "Mbgl-ConnectivityReceiver";
    private int activationCounter;
    private Boolean connected;
    private Context context;
    private List<ConnectivityListener> listeners = new CopyOnWriteArrayList();

    public static synchronized ConnectivityReceiver instance(Context context2) {
        ConnectivityReceiver connectivityReceiver;
        synchronized (ConnectivityReceiver.class) {
            if (INSTANCE == null) {
                ConnectivityReceiver connectivityReceiver2 = new ConnectivityReceiver(context2.getApplicationContext());
                INSTANCE = connectivityReceiver2;
                connectivityReceiver2.addListener(new NativeConnectivityListener());
            }
            connectivityReceiver = INSTANCE;
        }
        return connectivityReceiver;
    }

    private ConnectivityReceiver(Context context2) {
        this.context = context2;
    }

    public void activate() {
        if (this.activationCounter == 0) {
            this.context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        this.activationCounter++;
    }

    public void deactivate() {
        this.activationCounter--;
        if (this.activationCounter == 0) {
            this.context.unregisterReceiver(INSTANCE);
        }
    }

    public void onReceive(Context context2, Intent intent) {
        if (this.connected == null) {
            notifyListeners(isNetworkActive());
        }
    }

    public void setConnected(Boolean bool) {
        boolean z;
        this.connected = bool;
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = isNetworkActive();
        }
        notifyListeners(z);
    }

    private void notifyListeners(boolean z) {
        Logger.v(TAG, z ? LOG_CONNECTED : LOG_NOT_CONNECTED);
        for (ConnectivityListener onNetworkStateChanged : this.listeners) {
            onNetworkStateChanged.onNetworkStateChanged(z);
        }
    }

    public void addListener(ConnectivityListener connectivityListener) {
        this.listeners.add(connectivityListener);
    }

    public void removeListener(ConnectivityListener connectivityListener) {
        this.listeners.remove(connectivityListener);
    }

    public boolean isConnected() {
        Boolean bool = this.connected;
        return bool != null ? bool.booleanValue() : isNetworkActive();
    }

    private boolean isNetworkActive() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
