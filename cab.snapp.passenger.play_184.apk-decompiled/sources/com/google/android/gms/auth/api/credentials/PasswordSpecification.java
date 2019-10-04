package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;

public final class PasswordSpecification extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<PasswordSpecification> CREATOR = new h();

    /* renamed from: a  reason: collision with root package name */
    private static PasswordSpecification f2636a = new a().zzj(12, 16).zzes("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890").zze("abcdefghijklmnopqrstuvwxyz", 1).zze("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1).zze("1234567890", 1).zzaaw();
    public static final PasswordSpecification zzeft = new a().zzj(12, 16).zzes("abcdefghijkmnopqrstxyzABCDEFGHJKLMNPQRSTXY3456789").zze("abcdefghijkmnopqrstxyz", 1).zze("ABCDEFGHJKLMNPQRSTXY", 1).zze("3456789", 1).zzaaw();

    /* renamed from: b  reason: collision with root package name */
    private String f2637b;
    private List<String> c;
    private List<Integer> d;
    private int e;
    private int f;
    private final int[] g;
    private final Random h;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final TreeSet<Character> f2638a = new TreeSet<>();

        /* renamed from: b  reason: collision with root package name */
        private final List<String> f2639b = new ArrayList();
        private final List<Integer> c = new ArrayList();
        private int d = 12;
        private int e = 16;

        private static TreeSet<Character> a(String str, String str2) {
            if (!TextUtils.isEmpty(str)) {
                TreeSet<Character> treeSet = new TreeSet<>();
                char[] charArray = str.toCharArray();
                int length = charArray.length;
                int i = 0;
                while (i < length) {
                    char c2 = charArray[i];
                    if (!PasswordSpecification.a((int) c2)) {
                        treeSet.add(Character.valueOf(c2));
                        i++;
                    } else {
                        throw new b(String.valueOf(str2).concat(" must only contain ASCII printable characters"));
                    }
                }
                return treeSet;
            }
            throw new b(String.valueOf(str2).concat(" cannot be null or empty"));
        }

        public final PasswordSpecification zzaaw() {
            if (!this.f2638a.isEmpty()) {
                int i = 0;
                for (Integer intValue : this.c) {
                    i += intValue.intValue();
                }
                if (i <= this.e) {
                    boolean[] zArr = new boolean[95];
                    for (String charArray : this.f2639b) {
                        char[] charArray2 = charArray.toCharArray();
                        int length = charArray2.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 < length) {
                                char c2 = charArray2[i2];
                                int i3 = c2 - ' ';
                                if (!zArr[i3]) {
                                    zArr[i3] = true;
                                    i2++;
                                } else {
                                    StringBuilder sb = new StringBuilder(58);
                                    sb.append("character ");
                                    sb.append(c2);
                                    sb.append(" occurs in more than one required character set");
                                    throw new b(sb.toString());
                                }
                            }
                        }
                    }
                    PasswordSpecification passwordSpecification = new PasswordSpecification(PasswordSpecification.a((Collection) this.f2638a), this.f2639b, this.c, this.d, this.e);
                    return passwordSpecification;
                }
                throw new b("required character count cannot be greater than the max password size");
            }
            throw new b("no allowed characters specified");
        }

        public final a zze(String str, int i) {
            this.f2639b.add(PasswordSpecification.a((Collection) a(str, "requiredChars")));
            this.c.add(1);
            return this;
        }

        public final a zzes(String str) {
            this.f2638a.addAll(a(str, "allowedChars"));
            return this;
        }

        public final a zzj(int i, int i2) {
            this.d = 12;
            this.e = 16;
            return this;
        }
    }

    public static class b extends Error {
        public b(String str) {
            super(str);
        }
    }

    PasswordSpecification(String str, List<String> list, List<Integer> list2, int i, int i2) {
        this.f2637b = str;
        this.c = Collections.unmodifiableList(list);
        this.d = Collections.unmodifiableList(list2);
        this.e = i;
        this.f = i2;
        int[] iArr = new int[95];
        Arrays.fill(iArr, -1);
        int i3 = 0;
        for (String charArray : this.c) {
            char[] charArray2 = charArray.toCharArray();
            int length = charArray2.length;
            for (int i4 = 0; i4 < length; i4++) {
                iArr[charArray2[i4] - ' '] = i3;
            }
            i3++;
        }
        this.g = iArr;
        this.h = new SecureRandom();
    }

    static /* synthetic */ boolean a(int i) {
        return i < 32 || i > 126;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, this.f2637b, false);
        el.zzb(parcel, 2, this.c, false);
        el.zza(parcel, 3, this.d, false);
        el.zzc(parcel, 4, this.e);
        el.zzc(parcel, 5, this.f);
        el.zzai(parcel, zze);
    }

    static /* synthetic */ String a(Collection collection) {
        char[] cArr = new char[collection.size()];
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            cArr[i] = ((Character) it.next()).charValue();
            i++;
        }
        return new String(cArr);
    }
}
