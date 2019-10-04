package com.koushikdutta.ion;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Fragment;
import android.app.Service;
import android.content.Context;
import android.widget.ImageView;
import androidx.appcompat.widget.ActivityChooserView;
import java.lang.ref.WeakReference;
import java.util.List;

abstract class ContextReference<T> extends WeakReference<T> {

    static class ActivityContextReference extends NormalContextReference<Activity> {
        public ActivityContextReference(Activity activity) {
            super(activity);
        }

        static String isAlive(Activity activity) {
            if (activity == null) {
                return "Activity reference null";
            }
            if (activity.isFinishing()) {
                return "Activity finished";
            }
            return null;
        }

        public String isAlive() {
            return isAlive((Activity) get());
        }
    }

    static class FragmentContextReference extends ContextReference<Fragment> {
        public FragmentContextReference(Fragment fragment) {
            super(fragment);
        }

        public Context getContext() {
            Fragment fragment = (Fragment) get();
            if (fragment == null) {
                return null;
            }
            return fragment.getActivity();
        }

        public String isAlive() {
            Fragment fragment = (Fragment) get();
            if (fragment == null) {
                return "Fragment reference null";
            }
            String isAlive = ActivityContextReference.isAlive(fragment.getActivity());
            if (isAlive != null) {
                return isAlive;
            }
            if (fragment.isDetached()) {
                return "Fragment detached";
            }
            return null;
        }
    }

    static class ImageViewContextReference extends ContextReference<ImageView> {
        public ImageViewContextReference(ImageView imageView) {
            super(imageView);
        }

        public String isAlive() {
            ImageView imageView = (ImageView) get();
            if (imageView == null) {
                return "ImageView reference null";
            }
            return NormalContextReference.isAlive(imageView.getContext());
        }

        public Context getContext() {
            ImageView imageView = (ImageView) get();
            if (imageView == null) {
                return null;
            }
            return imageView.getContext();
        }
    }

    static abstract class NormalContextReference<T extends Context> extends ContextReference<T> {
        NormalContextReference(T t) {
            super(t);
        }

        static String isAlive(Context context) {
            if (context instanceof Service) {
                return ServiceContextReference.isAlive((Service) context);
            }
            if (context instanceof Activity) {
                return ActivityContextReference.isAlive((Activity) context);
            }
            return null;
        }

        public Context getContext() {
            return (Context) get();
        }
    }

    static class ServiceContextReference extends NormalContextReference<Service> {
        public ServiceContextReference(Service service) {
            super(service);
        }

        static String isAlive(Service service) {
            if (service == null) {
                return "Service reference null";
            }
            List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) service.getSystemService("activity")).getRunningServices(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            if (runningServices == null) {
                return "Could not retrieve services from service manager";
            }
            for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
                if (service.getClass().getName().equals(runningServiceInfo.service.getClassName())) {
                    return null;
                }
            }
            return "Service stopped";
        }

        public String isAlive() {
            return isAlive((Service) get());
        }
    }

    static class SupportFragmentContextReference extends ContextReference<androidx.fragment.app.Fragment> {
        public SupportFragmentContextReference(androidx.fragment.app.Fragment fragment) {
            super(fragment);
        }

        public Context getContext() {
            androidx.fragment.app.Fragment fragment = (androidx.fragment.app.Fragment) get();
            if (fragment == null) {
                return null;
            }
            return fragment.getActivity();
        }

        public String isAlive() {
            androidx.fragment.app.Fragment fragment = (androidx.fragment.app.Fragment) get();
            if (fragment == null) {
                return "Fragment reference null";
            }
            String isAlive = ActivityContextReference.isAlive(fragment.getActivity());
            if (isAlive != null) {
                return isAlive;
            }
            if (fragment.isDetached()) {
                return "Fragment detached";
            }
            return null;
        }
    }

    public abstract Context getContext();

    public abstract String isAlive();

    ContextReference(T t) {
        super(t);
    }

    public static ContextReference fromContext(Context context) {
        if (context instanceof Service) {
            return new ServiceContextReference((Service) context);
        }
        if (context instanceof Activity) {
            return new ActivityContextReference((Activity) context);
        }
        return new NormalContextReference<Context>(context) {
            public final String isAlive() {
                if (((Context) get()) == null) {
                    return "Context reference null";
                }
                return null;
            }
        };
    }
}
