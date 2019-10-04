package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import b.b.f.a.A;
import b.b.f.a.k;
import b.b.f.a.o;
import b.b.f.a.t;
import c.e.a.c.e.d;

public class BottomNavigationPresenter implements t {

    /* renamed from: a  reason: collision with root package name */
    public k f13330a;

    /* renamed from: b  reason: collision with root package name */
    public d f13331b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f13332c = false;

    /* renamed from: d  reason: collision with root package name */
    public int f13333d;

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new e();

        /* renamed from: a  reason: collision with root package name */
        public int f13334a;

        public SavedState() {
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f13334a);
        }

        public SavedState(Parcel parcel) {
            this.f13334a = parcel.readInt();
        }
    }

    public void a(k kVar, boolean z) {
    }

    public void a(d dVar) {
        this.f13331b = dVar;
    }

    public boolean a() {
        return false;
    }

    public boolean a(A a2) {
        return false;
    }

    public boolean a(k kVar, o oVar) {
        return false;
    }

    public Parcelable b() {
        SavedState savedState = new SavedState();
        savedState.f13334a = this.f13331b.getSelectedItemId();
        return savedState;
    }

    public boolean b(k kVar, o oVar) {
        return false;
    }

    public int getId() {
        return this.f13333d;
    }

    public void a(Context context, k kVar) {
        this.f13330a = kVar;
        this.f13331b.a(this.f13330a);
    }

    public void b(boolean z) {
        this.f13332c = z;
    }

    public void a(boolean z) {
        if (!this.f13332c) {
            if (z) {
                this.f13331b.a();
            } else {
                this.f13331b.c();
            }
        }
    }

    public void a(int i2) {
        this.f13333d = i2;
    }

    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f13331b.b(((SavedState) parcelable).f13334a);
        }
    }
}
