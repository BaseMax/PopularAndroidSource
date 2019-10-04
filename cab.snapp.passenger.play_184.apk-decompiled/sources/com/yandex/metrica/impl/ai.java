package com.yandex.metrica.impl;

import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;

public interface ai {
    void a();

    void a(Intent intent);

    void a(Intent intent, int i);

    void a(Intent intent, int i, int i2);

    void a(Bundle bundle) throws RemoteException;

    @Deprecated
    void a(String str, int i, String str2, Bundle bundle) throws RemoteException;

    void b();

    void b(Intent intent);

    void c(Intent intent);
}
