package androidx.core.app;

import android.app.Activity;
import android.app.AppComponentFactory;
import android.app.Application;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Intent;

public class CoreComponentFactory extends AppComponentFactory {

    public interface a {
        Object a();
    }

    public static <T> T a(T t) {
        if (t instanceof a) {
            T a2 = ((a) t).a();
            if (a2 != null) {
                return a2;
            }
        }
        return t;
    }

    public Activity instantiateActivity(ClassLoader classLoader, String str, Intent intent) {
        return (Activity) a(super.instantiateActivity(classLoader, str, intent));
    }

    public Application instantiateApplication(ClassLoader classLoader, String str) {
        return (Application) a(super.instantiateApplication(classLoader, str));
    }

    public ContentProvider instantiateProvider(ClassLoader classLoader, String str) {
        return (ContentProvider) a(super.instantiateProvider(classLoader, str));
    }

    public BroadcastReceiver instantiateReceiver(ClassLoader classLoader, String str, Intent intent) {
        return (BroadcastReceiver) a(super.instantiateReceiver(classLoader, str, intent));
    }

    public Service instantiateService(ClassLoader classLoader, String str, Intent intent) {
        return (Service) a(super.instantiateService(classLoader, str, intent));
    }
}
