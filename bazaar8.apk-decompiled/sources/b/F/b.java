package b.F;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.versionedparcelable.VersionedParcel;
import b.f.C0243b;
import java.lang.reflect.Method;

/* compiled from: VersionedParcelParcel */
public class b extends VersionedParcel {

    /* renamed from: d  reason: collision with root package name */
    public final SparseIntArray f1302d;

    /* renamed from: e  reason: collision with root package name */
    public final Parcel f1303e;

    /* renamed from: f  reason: collision with root package name */
    public final int f1304f;

    /* renamed from: g  reason: collision with root package name */
    public final int f1305g;

    /* renamed from: h  reason: collision with root package name */
    public final String f1306h;

    /* renamed from: i  reason: collision with root package name */
    public int f1307i;

    /* renamed from: j  reason: collision with root package name */
    public int f1308j;

    /* renamed from: k  reason: collision with root package name */
    public int f1309k;

    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C0243b(), new C0243b(), new C0243b());
    }

    public boolean a(int i2) {
        while (true) {
            boolean z = true;
            if (this.f1308j < this.f1305g) {
                int i3 = this.f1309k;
                if (i3 == i2) {
                    return true;
                }
                if (String.valueOf(i3).compareTo(String.valueOf(i2)) > 0) {
                    return false;
                }
                this.f1303e.setDataPosition(this.f1308j);
                int readInt = this.f1303e.readInt();
                this.f1309k = this.f1303e.readInt();
                this.f1308j += readInt;
            } else {
                if (this.f1309k != i2) {
                    z = false;
                }
                return z;
            }
        }
    }

    public void b(int i2) {
        a();
        this.f1307i = i2;
        this.f1302d.put(i2, this.f1303e.dataPosition());
        c(0);
        c(i2);
    }

    public void c(int i2) {
        this.f1303e.writeInt(i2);
    }

    public boolean d() {
        return this.f1303e.readInt() != 0;
    }

    public byte[] e() {
        int readInt = this.f1303e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f1303e.readByteArray(bArr);
        return bArr;
    }

    public CharSequence f() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f1303e);
    }

    public int g() {
        return this.f1303e.readInt();
    }

    public <T extends Parcelable> T h() {
        return this.f1303e.readParcelable(b.class.getClassLoader());
    }

    public String i() {
        return this.f1303e.readString();
    }

    public b(Parcel parcel, int i2, int i3, String str, C0243b<String, Method> bVar, C0243b<String, Method> bVar2, C0243b<String, Class> bVar3) {
        super(bVar, bVar2, bVar3);
        this.f1302d = new SparseIntArray();
        this.f1307i = -1;
        this.f1308j = 0;
        this.f1309k = -1;
        this.f1303e = parcel;
        this.f1304f = i2;
        this.f1305g = i3;
        this.f1308j = this.f1304f;
        this.f1306h = str;
    }

    public VersionedParcel b() {
        Parcel parcel = this.f1303e;
        int dataPosition = parcel.dataPosition();
        int i2 = this.f1308j;
        if (i2 == this.f1304f) {
            i2 = this.f1305g;
        }
        int i3 = i2;
        b bVar = new b(parcel, dataPosition, i3, this.f1306h + "  ", this.f966a, this.f967b, this.f968c);
        return bVar;
    }

    public void b(String str) {
        this.f1303e.writeString(str);
    }

    public void a() {
        int i2 = this.f1307i;
        if (i2 >= 0) {
            int i3 = this.f1302d.get(i2);
            int dataPosition = this.f1303e.dataPosition();
            this.f1303e.setDataPosition(i3);
            this.f1303e.writeInt(dataPosition - i3);
            this.f1303e.setDataPosition(dataPosition);
        }
    }

    public void a(byte[] bArr) {
        if (bArr != null) {
            this.f1303e.writeInt(bArr.length);
            this.f1303e.writeByteArray(bArr);
            return;
        }
        this.f1303e.writeInt(-1);
    }

    public void a(Parcelable parcelable) {
        this.f1303e.writeParcelable(parcelable, 0);
    }

    public void a(boolean z) {
        this.f1303e.writeInt(z ? 1 : 0);
    }

    public void a(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f1303e, 0);
    }
}
