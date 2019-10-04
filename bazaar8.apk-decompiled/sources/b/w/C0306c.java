package b.w;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import b.i.a.d;
import b.w.K;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@K.b("activity")
/* renamed from: b.w.c  reason: case insensitive filesystem */
/* compiled from: ActivityNavigator */
public class C0306c extends K<a> {

    /* renamed from: a  reason: collision with root package name */
    public Context f3270a;

    /* renamed from: b  reason: collision with root package name */
    public Activity f3271b;

    /* renamed from: b.w.c$a */
    /* compiled from: ActivityNavigator */
    public static class a extends o {

        /* renamed from: j  reason: collision with root package name */
        public Intent f3272j;

        /* renamed from: k  reason: collision with root package name */
        public String f3273k;

        public a(K<? extends a> k2) {
            super((K<? extends o>) k2);
        }

        public void a(Context context, AttributeSet attributeSet) {
            super.a(context, attributeSet);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, N.ActivityNavigator);
            String string = obtainAttributes.getString(N.ActivityNavigator_targetPackage);
            if (string != null) {
                string = string.replace("${applicationId}", context.getPackageName());
            }
            d(string);
            String string2 = obtainAttributes.getString(N.ActivityNavigator_android_name);
            if (string2 != null) {
                if (string2.charAt(0) == '.') {
                    string2 = context.getPackageName() + string2;
                }
                a(new ComponentName(context, string2));
            }
            b(obtainAttributes.getString(N.ActivityNavigator_action));
            String string3 = obtainAttributes.getString(N.ActivityNavigator_data);
            if (string3 != null) {
                b(Uri.parse(string3));
            }
            c(obtainAttributes.getString(N.ActivityNavigator_dataPattern));
            obtainAttributes.recycle();
        }

        public final a b(String str) {
            if (this.f3272j == null) {
                this.f3272j = new Intent();
            }
            this.f3272j.setAction(str);
            return this;
        }

        public final a c(String str) {
            this.f3273k = str;
            return this;
        }

        public final a d(String str) {
            if (this.f3272j == null) {
                this.f3272j = new Intent();
            }
            this.f3272j.setPackage(str);
            return this;
        }

        public boolean f() {
            return false;
        }

        public final String g() {
            return this.f3273k;
        }

        public final Intent h() {
            return this.f3272j;
        }

        public final a b(Uri uri) {
            if (this.f3272j == null) {
                this.f3272j = new Intent();
            }
            this.f3272j.setData(uri);
            return this;
        }

        public final a a(ComponentName componentName) {
            if (this.f3272j == null) {
                this.f3272j = new Intent();
            }
            this.f3272j.setComponent(componentName);
            return this;
        }
    }

    /* renamed from: b.w.c$b */
    /* compiled from: ActivityNavigator */
    public static final class b implements K.a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3274a;

        /* renamed from: b  reason: collision with root package name */
        public final d f3275b;

        public d a() {
            return this.f3275b;
        }

        public int b() {
            return this.f3274a;
        }
    }

    public C0306c(Context context) {
        this.f3270a = context;
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                this.f3271b = (Activity) context;
                return;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
    }

    public boolean c() {
        Activity activity = this.f3271b;
        if (activity == null) {
            return false;
        }
        activity.finish();
        return true;
    }

    public a a() {
        return new a(this);
    }

    public o a(a aVar, Bundle bundle, w wVar, K.a aVar2) {
        if (aVar.h() != null) {
            Intent intent = new Intent(aVar.h());
            if (bundle != null) {
                intent.putExtras(bundle);
                String g2 = aVar.g();
                if (!TextUtils.isEmpty(g2)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(g2);
                    while (matcher.find()) {
                        String group = matcher.group(1);
                        if (bundle.containsKey(group)) {
                            matcher.appendReplacement(stringBuffer, "");
                            stringBuffer.append(Uri.encode(bundle.get(group).toString()));
                        } else {
                            throw new IllegalArgumentException("Could not find " + group + " in " + bundle + " to fill data pattern " + g2);
                        }
                    }
                    matcher.appendTail(stringBuffer);
                    intent.setData(Uri.parse(stringBuffer.toString()));
                }
            }
            boolean z = aVar2 instanceof b;
            if (z) {
                intent.addFlags(((b) aVar2).b());
            }
            if (!(this.f3270a instanceof Activity)) {
                intent.addFlags(268435456);
            }
            if (wVar != null && wVar.g()) {
                intent.addFlags(536870912);
            }
            Activity activity = this.f3271b;
            if (activity != null) {
                Intent intent2 = activity.getIntent();
                if (intent2 != null) {
                    int intExtra = intent2.getIntExtra("android-support-navigation:ActivityNavigator:current", 0);
                    if (intExtra != 0) {
                        intent.putExtra("android-support-navigation:ActivityNavigator:source", intExtra);
                    }
                }
            }
            intent.putExtra("android-support-navigation:ActivityNavigator:current", aVar.d());
            if (wVar != null) {
                intent.putExtra("android-support-navigation:ActivityNavigator:popEnterAnim", wVar.c());
                intent.putExtra("android-support-navigation:ActivityNavigator:popExitAnim", wVar.d());
            }
            if (z) {
                d a2 = ((b) aVar2).a();
                if (a2 == null) {
                    this.f3270a.startActivity(intent);
                } else {
                    Context context = this.f3270a;
                    a2.a();
                    throw null;
                }
            } else {
                this.f3270a.startActivity(intent);
            }
            if (!(wVar == null || this.f3271b == null)) {
                int a3 = wVar.a();
                int b2 = wVar.b();
                if (!(a3 == -1 && b2 == -1)) {
                    if (a3 == -1) {
                        a3 = 0;
                    }
                    if (b2 == -1) {
                        b2 = 0;
                    }
                    this.f3271b.overridePendingTransition(a3, b2);
                }
            }
            return null;
        }
        throw new IllegalStateException("Destination " + aVar.d() + " does not have an Intent set.");
    }
}
