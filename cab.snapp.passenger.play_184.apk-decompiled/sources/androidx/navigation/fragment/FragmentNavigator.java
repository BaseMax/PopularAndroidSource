package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

@Navigator.Name("fragment")
public class FragmentNavigator extends Navigator<Destination> {
    private static final String KEY_BACK_STACK_IDS = "androidx-nav-fragment:navigator:backStackIds";
    private static final String TAG = "FragmentNavigator";
    ArrayDeque<Integer> mBackStack = new ArrayDeque<>();
    private final int mContainerId;
    private final Context mContext;
    final FragmentManager mFragmentManager;
    boolean mIsPendingBackStackOperation = false;
    private final FragmentManager.OnBackStackChangedListener mOnBackStackChangedListener = new FragmentManager.OnBackStackChangedListener() {
        public void onBackStackChanged() {
            if (FragmentNavigator.this.mIsPendingBackStackOperation) {
                FragmentNavigator fragmentNavigator = FragmentNavigator.this;
                fragmentNavigator.mIsPendingBackStackOperation = !fragmentNavigator.isBackStackEqual();
                return;
            }
            int backStackEntryCount = FragmentNavigator.this.mFragmentManager.getBackStackEntryCount() + 1;
            if (backStackEntryCount < FragmentNavigator.this.mBackStack.size()) {
                while (FragmentNavigator.this.mBackStack.size() > backStackEntryCount) {
                    FragmentNavigator.this.mBackStack.removeLast();
                }
                FragmentNavigator.this.dispatchOnNavigatorBackPress();
            }
        }
    };

    public static class Destination extends NavDestination {
        private String mClassName;

        public Destination(NavigatorProvider navigatorProvider) {
            this((Navigator<? extends Destination>) navigatorProvider.getNavigator(FragmentNavigator.class));
        }

        public Destination(Navigator<? extends Destination> navigator) {
            super((Navigator<? extends NavDestination>) navigator);
        }

        public void onInflate(Context context, AttributeSet attributeSet) {
            super.onInflate(context, attributeSet);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R.styleable.FragmentNavigator);
            String string = obtainAttributes.getString(R.styleable.FragmentNavigator_android_name);
            if (string != null) {
                setClassName(string);
            }
            obtainAttributes.recycle();
        }

        public final Destination setClassName(String str) {
            this.mClassName = str;
            return this;
        }

        public final String getClassName() {
            String str = this.mClassName;
            if (str != null) {
                return str;
            }
            throw new IllegalStateException("Fragment class was not set");
        }
    }

    public static final class Extras implements Navigator.Extras {
        private final LinkedHashMap<View, String> mSharedElements = new LinkedHashMap<>();

        public static final class Builder {
            private final LinkedHashMap<View, String> mSharedElements = new LinkedHashMap<>();

            public final Builder addSharedElements(Map<View, String> map) {
                for (Map.Entry next : map.entrySet()) {
                    View view = (View) next.getKey();
                    String str = (String) next.getValue();
                    if (!(view == null || str == null)) {
                        addSharedElement(view, str);
                    }
                }
                return this;
            }

            public final Builder addSharedElement(View view, String str) {
                this.mSharedElements.put(view, str);
                return this;
            }

            public final Extras build() {
                return new Extras(this.mSharedElements);
            }
        }

        Extras(Map<View, String> map) {
            this.mSharedElements.putAll(map);
        }

        public final Map<View, String> getSharedElements() {
            return Collections.unmodifiableMap(this.mSharedElements);
        }
    }

    public FragmentNavigator(Context context, FragmentManager fragmentManager, int i) {
        this.mContext = context;
        this.mFragmentManager = fragmentManager;
        this.mContainerId = i;
    }

    public void onBackPressAdded() {
        this.mFragmentManager.addOnBackStackChangedListener(this.mOnBackStackChangedListener);
    }

    public void onBackPressRemoved() {
        this.mFragmentManager.removeOnBackStackChangedListener(this.mOnBackStackChangedListener);
    }

    public boolean popBackStack() {
        if (this.mBackStack.isEmpty() || this.mFragmentManager.isStateSaved()) {
            return false;
        }
        if (this.mFragmentManager.getBackStackEntryCount() > 0) {
            this.mFragmentManager.popBackStack(generateBackStackName(this.mBackStack.size(), this.mBackStack.peekLast().intValue()), 1);
            this.mIsPendingBackStackOperation = true;
        }
        this.mBackStack.removeLast();
        return true;
    }

    public Destination createDestination() {
        return new Destination((Navigator<? extends Destination>) this);
    }

    public Fragment instantiateFragment(Context context, FragmentManager fragmentManager, String str, Bundle bundle) {
        return Fragment.instantiate(context, str, bundle);
    }

    /* JADX WARNING: Removed duplicated region for block: B:50:0x00f5  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0127  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0131 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public androidx.navigation.NavDestination navigate(androidx.navigation.fragment.FragmentNavigator.Destination r9, android.os.Bundle r10, androidx.navigation.NavOptions r11, androidx.navigation.Navigator.Extras r12) {
        /*
            r8 = this;
            androidx.fragment.app.FragmentManager r0 = r8.mFragmentManager
            boolean r0 = r0.isStateSaved()
            r1 = 0
            if (r0 == 0) goto L_0x000a
            return r1
        L_0x000a:
            java.lang.String r0 = r9.getClassName()
            r2 = 0
            char r3 = r0.charAt(r2)
            r4 = 46
            if (r3 != r4) goto L_0x002c
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            android.content.Context r4 = r8.mContext
            java.lang.String r4 = r4.getPackageName()
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
        L_0x002c:
            android.content.Context r3 = r8.mContext
            androidx.fragment.app.FragmentManager r4 = r8.mFragmentManager
            androidx.fragment.app.Fragment r0 = r8.instantiateFragment(r3, r4, r0, r10)
            r0.setArguments(r10)
            androidx.fragment.app.FragmentManager r10 = r8.mFragmentManager
            androidx.fragment.app.FragmentTransaction r10 = r10.beginTransaction()
            r3 = -1
            if (r11 == 0) goto L_0x0045
            int r4 = r11.getEnterAnim()
            goto L_0x0046
        L_0x0045:
            r4 = -1
        L_0x0046:
            if (r11 == 0) goto L_0x004d
            int r5 = r11.getExitAnim()
            goto L_0x004e
        L_0x004d:
            r5 = -1
        L_0x004e:
            if (r11 == 0) goto L_0x0055
            int r6 = r11.getPopEnterAnim()
            goto L_0x0056
        L_0x0055:
            r6 = -1
        L_0x0056:
            if (r11 == 0) goto L_0x005d
            int r7 = r11.getPopExitAnim()
            goto L_0x005e
        L_0x005d:
            r7 = -1
        L_0x005e:
            if (r4 != r3) goto L_0x0066
            if (r5 != r3) goto L_0x0066
            if (r6 != r3) goto L_0x0066
            if (r7 == r3) goto L_0x0079
        L_0x0066:
            if (r4 == r3) goto L_0x0069
            goto L_0x006a
        L_0x0069:
            r4 = 0
        L_0x006a:
            if (r5 == r3) goto L_0x006d
            goto L_0x006e
        L_0x006d:
            r5 = 0
        L_0x006e:
            if (r6 == r3) goto L_0x0071
            goto L_0x0072
        L_0x0071:
            r6 = 0
        L_0x0072:
            if (r7 == r3) goto L_0x0075
            goto L_0x0076
        L_0x0075:
            r7 = 0
        L_0x0076:
            r10.setCustomAnimations(r4, r5, r6, r7)
        L_0x0079:
            int r3 = r8.mContainerId
            r10.replace(r3, r0)
            r10.setPrimaryNavigationFragment(r0)
            int r0 = r9.getId()
            java.util.ArrayDeque<java.lang.Integer> r3 = r8.mBackStack
            boolean r3 = r3.isEmpty()
            r4 = 1
            if (r11 == 0) goto L_0x00a6
            if (r3 != 0) goto L_0x00a6
            boolean r11 = r11.shouldLaunchSingleTop()
            if (r11 == 0) goto L_0x00a6
            java.util.ArrayDeque<java.lang.Integer> r11 = r8.mBackStack
            java.lang.Object r11 = r11.peekLast()
            java.lang.Integer r11 = (java.lang.Integer) r11
            int r11 = r11.intValue()
            if (r11 != r0) goto L_0x00a6
            r11 = 1
            goto L_0x00a7
        L_0x00a6:
            r11 = 0
        L_0x00a7:
            if (r3 == 0) goto L_0x00ab
        L_0x00a9:
            r2 = 1
            goto L_0x00f1
        L_0x00ab:
            if (r11 == 0) goto L_0x00e0
            java.util.ArrayDeque<java.lang.Integer> r11 = r8.mBackStack
            int r11 = r11.size()
            if (r11 <= r4) goto L_0x00f1
            androidx.fragment.app.FragmentManager r11 = r8.mFragmentManager
            java.util.ArrayDeque<java.lang.Integer> r3 = r8.mBackStack
            int r3 = r3.size()
            java.util.ArrayDeque<java.lang.Integer> r5 = r8.mBackStack
            java.lang.Object r5 = r5.peekLast()
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            java.lang.String r3 = r8.generateBackStackName(r3, r5)
            r11.popBackStack((java.lang.String) r3, (int) r4)
            java.util.ArrayDeque<java.lang.Integer> r11 = r8.mBackStack
            int r11 = r11.size()
            java.lang.String r11 = r8.generateBackStackName(r11, r0)
            r10.addToBackStack(r11)
            r8.mIsPendingBackStackOperation = r4
            goto L_0x00f1
        L_0x00e0:
            java.util.ArrayDeque<java.lang.Integer> r11 = r8.mBackStack
            int r11 = r11.size()
            int r11 = r11 + r4
            java.lang.String r11 = r8.generateBackStackName(r11, r0)
            r10.addToBackStack(r11)
            r8.mIsPendingBackStackOperation = r4
            goto L_0x00a9
        L_0x00f1:
            boolean r11 = r12 instanceof androidx.navigation.fragment.FragmentNavigator.Extras
            if (r11 == 0) goto L_0x011f
            androidx.navigation.fragment.FragmentNavigator$Extras r12 = (androidx.navigation.fragment.FragmentNavigator.Extras) r12
            java.util.Map r11 = r12.getSharedElements()
            java.util.Set r11 = r11.entrySet()
            java.util.Iterator r11 = r11.iterator()
        L_0x0103:
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto L_0x011f
            java.lang.Object r12 = r11.next()
            java.util.Map$Entry r12 = (java.util.Map.Entry) r12
            java.lang.Object r3 = r12.getKey()
            android.view.View r3 = (android.view.View) r3
            java.lang.Object r12 = r12.getValue()
            java.lang.String r12 = (java.lang.String) r12
            r10.addSharedElement(r3, r12)
            goto L_0x0103
        L_0x011f:
            r10.setReorderingAllowed(r4)
            r10.commit()
            if (r2 == 0) goto L_0x0131
            java.util.ArrayDeque<java.lang.Integer> r10 = r8.mBackStack
            java.lang.Integer r11 = java.lang.Integer.valueOf(r0)
            r10.add(r11)
            return r9
        L_0x0131:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.fragment.FragmentNavigator.navigate(androidx.navigation.fragment.FragmentNavigator$Destination, android.os.Bundle, androidx.navigation.NavOptions, androidx.navigation.Navigator$Extras):androidx.navigation.NavDestination");
    }

    public Bundle onSaveState() {
        Bundle bundle = new Bundle();
        int[] iArr = new int[this.mBackStack.size()];
        Iterator<Integer> it = this.mBackStack.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = it.next().intValue();
            i++;
        }
        bundle.putIntArray(KEY_BACK_STACK_IDS, iArr);
        return bundle;
    }

    public void onRestoreState(Bundle bundle) {
        if (bundle != null) {
            int[] intArray = bundle.getIntArray(KEY_BACK_STACK_IDS);
            if (intArray != null) {
                this.mBackStack.clear();
                for (int valueOf : intArray) {
                    this.mBackStack.add(Integer.valueOf(valueOf));
                }
            }
        }
    }

    private String generateBackStackName(int i, int i2) {
        return i + "-" + i2;
    }

    private int getDestId(String str) {
        String[] split = str != null ? str.split("-") : new String[0];
        if (split.length == 2) {
            try {
                Integer.parseInt(split[0]);
                return Integer.parseInt(split[1]);
            } catch (NumberFormatException unused) {
                throw new IllegalStateException("Invalid back stack entry on the NavHostFragment's back stack - use getChildFragmentManager() if you need to do custom FragmentTransactions from within Fragments created via your navigation graph.");
            }
        } else {
            throw new IllegalStateException("Invalid back stack entry on the NavHostFragment's back stack - use getChildFragmentManager() if you need to do custom FragmentTransactions from within Fragments created via your navigation graph.");
        }
    }

    /* access modifiers changed from: package-private */
    public boolean isBackStackEqual() {
        int backStackEntryCount = this.mFragmentManager.getBackStackEntryCount();
        if (this.mBackStack.size() != backStackEntryCount + 1) {
            return false;
        }
        Iterator<Integer> descendingIterator = this.mBackStack.descendingIterator();
        int i = backStackEntryCount - 1;
        while (descendingIterator.hasNext() && i >= 0) {
            try {
                int i2 = i - 1;
                if (descendingIterator.next().intValue() != getDestId(this.mFragmentManager.getBackStackEntryAt(i).getName())) {
                    return false;
                }
                i = i2;
            } catch (NumberFormatException unused) {
                throw new IllegalStateException("Invalid back stack entry on the NavHostFragment's back stack - use getChildFragmentManager() if you need to do custom FragmentTransactions from within Fragments created via your navigation graph.");
            }
        }
        return true;
    }
}
