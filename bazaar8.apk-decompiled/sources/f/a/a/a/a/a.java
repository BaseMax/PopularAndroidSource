package f.a.a.a.a;

import java.text.SimpleDateFormat;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Action */
public class a implements Comparable<a> {

    /* renamed from: a  reason: collision with root package name */
    public long f13914a;

    /* renamed from: b  reason: collision with root package name */
    public String f13915b;

    /* renamed from: c  reason: collision with root package name */
    public String f13916c;

    /* renamed from: d  reason: collision with root package name */
    public JSONObject f13917d;

    /* renamed from: e  reason: collision with root package name */
    public String f13918e;

    /* renamed from: f  reason: collision with root package name */
    public String f13919f;

    /* renamed from: g  reason: collision with root package name */
    public JSONObject f13920g;

    public a() {
        this.f13918e = "";
        this.f13915b = "";
        this.f13916c = "";
        this.f13917d = new JSONObject();
        this.f13918e = "";
        this.f13919f = "";
        this.f13920g = new JSONObject();
    }

    public a a(String str) {
        this.f13919f = str;
        return this;
    }

    public a b(String str) {
        this.f13918e = str;
        return this;
    }

    public a c(String str) {
        this.f13916c = str;
        return this;
    }

    public a d(String str) {
        this.f13915b = str;
        return this;
    }

    public String f() {
        return this.f13919f;
    }

    public String g() {
        return this.f13918e;
    }

    public JSONObject h() {
        return this.f13920g;
    }

    public String i() {
        return this.f13916c;
    }

    public JSONObject j() {
        return this.f13917d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Action :: when=");
        sb.append(new SimpleDateFormat().format(Long.valueOf(this.f13914a)));
        sb.append(";\n agent=");
        sb.append(this.f13919f);
        sb.append(";\n who=");
        sb.append(this.f13915b);
        sb.append(";\n where=");
        sb.append(this.f13916c);
        sb.append("; details=");
        JSONObject jSONObject = this.f13917d;
        String str = "";
        sb.append(jSONObject != null ? jSONObject.toString() : str);
        sb.append(";\n what=");
        sb.append(this.f13918e);
        sb.append("; details=");
        JSONObject jSONObject2 = this.f13920g;
        if (jSONObject2 != null) {
            str = jSONObject2.toString();
        }
        sb.append(str);
        return sb.toString();
    }

    public a a(long j2) {
        this.f13914a = j2;
        return this;
    }

    public a b(String str, Object obj) {
        if (this.f13917d == null) {
            this.f13917d = new JSONObject();
        }
        try {
            this.f13917d.put(str, obj);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return this;
    }

    public a a(String str, Object obj) {
        if (this.f13920g == null) {
            this.f13920g = new JSONObject();
        }
        try {
            this.f13920g.put(str, obj);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return this;
    }

    /* renamed from: a */
    public int compareTo(a aVar) {
        long j2 = this.f13914a;
        long j3 = aVar.f13914a;
        if (j2 < j3) {
            return -1;
        }
        return j2 == j3 ? 0 : 1;
    }
}
