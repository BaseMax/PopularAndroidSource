package com.webengage.sdk.android.actions.rules.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import org.eclipse.paho.a.a.w;

public class c {

    /* renamed from: a  reason: collision with root package name */
    private static volatile c f5421a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, g> f5422b = new HashMap();
    private final Map<String, e> c = new HashMap();
    private final Map<String, h> d = new HashMap();
    private a e = new b();

    private c() {
        b();
    }

    public static c a() {
        if (f5421a == null) {
            synchronized (c.class) {
                if (f5421a == null) {
                    f5421a = new c();
                }
            }
        }
        return f5421a;
    }

    private void b() {
        a((e) new e("!") {
            public Object a(List<Object> list) {
                return (list.size() == 0 || list.get(0) == null) ? Boolean.FALSE : Boolean.valueOf(!((Boolean) list.get(0)).booleanValue());
            }
        });
        a((g) new g(",", Integer.MIN_VALUE) {
            public Object a(Object obj, Object obj2) {
                ArrayList arrayList = new ArrayList();
                if (obj instanceof Collection) {
                    arrayList.addAll((Collection) obj);
                } else {
                    arrayList.add(obj);
                }
                if (obj2 instanceof Collection) {
                    arrayList.addAll((Collection) obj2);
                } else {
                    arrayList.add(obj2);
                }
                return arrayList;
            }
        });
        a((g) new g(">=", 100) {
            public Object a(Object obj, Object obj2) {
                if (obj == null || obj2 == null) {
                    return Boolean.FALSE;
                }
                return Boolean.valueOf(Double.compare(((Number) obj).doubleValue(), ((Number) obj2).doubleValue()) >= 0);
            }
        });
        a((g) new g("<=", 100) {
            public Object a(Object obj, Object obj2) {
                if (obj == null || obj2 == null) {
                    return Boolean.FALSE;
                }
                return Boolean.valueOf(Double.compare(((Number) obj).doubleValue(), ((Number) obj2).doubleValue()) <= 0);
            }
        });
        a((g) new g(">", 100) {
            public Object a(Object obj, Object obj2) {
                if (obj == null || obj2 == null) {
                    return Boolean.FALSE;
                }
                return Boolean.valueOf(Double.compare(((Number) obj).doubleValue(), ((Number) obj2).doubleValue()) > 0);
            }
        });
        a((g) new g("<", 100) {
            public Object a(Object obj, Object obj2) {
                if (obj == null || obj2 == null) {
                    return Boolean.FALSE;
                }
                return Boolean.valueOf(Double.compare(((Number) obj).doubleValue(), ((Number) obj2).doubleValue()) < 0);
            }
        });
        a((g) new g("&&", 10) {
            public Object a(Object obj, Object obj2) {
                if (obj == null || obj2 == null) {
                    return Boolean.FALSE;
                }
                if (!obj.getClass().getSimpleName().equalsIgnoreCase(obj2.getClass().getSimpleName())) {
                    return Boolean.FALSE;
                }
                return Boolean.valueOf(((Boolean) obj).booleanValue() && ((Boolean) obj2).booleanValue());
            }
        });
        a((g) new g("||", 9) {
            public Object a(Object obj, Object obj2) {
                if (obj == null || obj2 == null) {
                    return Boolean.FALSE;
                }
                if (!obj.getClass().getSimpleName().equalsIgnoreCase(obj2.getClass().getSimpleName())) {
                    return Boolean.FALSE;
                }
                return Boolean.valueOf(((Boolean) obj).booleanValue() || ((Boolean) obj2).booleanValue());
            }
        });
        a((g) new g("==", 100) {
            public Object a(Object obj, Object obj2) {
                if (obj == null && obj2 == null) {
                    return Boolean.TRUE;
                }
                if (obj == null || obj2 == null) {
                    return Boolean.FALSE;
                }
                if (!(obj instanceof Number) || !(obj2 instanceof Number)) {
                    return !obj.getClass().getSimpleName().equals(obj2.getClass().getSimpleName()) ? Boolean.FALSE : Boolean.valueOf(obj.toString().equals(obj2.toString()));
                }
                return Boolean.valueOf(Double.compare(((Number) obj).doubleValue(), ((Number) obj2).doubleValue()) == 0);
            }
        });
        a((g) new g("!=", 100) {
            public Object a(Object obj, Object obj2) {
                return Boolean.valueOf(!((Boolean) c.a().d("==").a(obj, obj2)).booleanValue());
            }
        });
        a((g) new g(w.SINGLE_LEVEL_WILDCARD, 101) {
            public Object a(Object obj, Object obj2) {
                if (obj == null && obj2 == null) {
                    return null;
                }
                if (obj == null) {
                    if (obj2 instanceof String) {
                        return obj2.toString();
                    }
                    return null;
                } else if (obj2 == null) {
                    if (obj instanceof String) {
                        return obj.toString();
                    }
                    return null;
                } else if ((obj instanceof Number) && (obj2 instanceof Number)) {
                    return Double.valueOf(((Number) obj).doubleValue() + ((Number) obj2).doubleValue());
                } else {
                    return obj.toString() + obj2.toString();
                }
            }
        });
        a((g) new g("-", 101) {
            public Object a(Object obj, Object obj2) {
                if (obj == null || obj2 == null) {
                    return null;
                }
                return Double.valueOf(((Number) obj).doubleValue() - ((Number) obj2).doubleValue());
            }
        });
        a((g) new g("*", 102) {
            public Object a(Object obj, Object obj2) {
                if (obj == null || obj2 == null) {
                    return null;
                }
                return Double.valueOf(((Number) obj).doubleValue() * ((Number) obj2).doubleValue());
            }
        });
        a((g) new g(w.TOPIC_LEVEL_SEPARATOR, 102) {
            public Object a(Object obj, Object obj2) {
                if (obj == null || obj2 == null) {
                    return null;
                }
                return Double.valueOf(((Number) obj).doubleValue() / ((Number) obj2).doubleValue());
            }
        });
        a((g) new g("^", 103) {
            public Object a(Object obj, Object obj2) {
                if (obj == null || obj2 == null) {
                    return null;
                }
                return Double.valueOf(Math.pow(((Number) obj).doubleValue(), ((Number) obj2).doubleValue()));
            }
        });
    }

    /* access modifiers changed from: protected */
    public Object a(List<String> list) {
        Object a2;
        if (list == null) {
            return null;
        }
        Stack stack = new Stack();
        for (String next : list) {
            if (!next.equalsIgnoreCase(" ") && !next.isEmpty()) {
                if (c(next)) {
                    a2 = this.d.get(next).a();
                } else if (a(next)) {
                    Object pop = stack.pop();
                    a2 = this.f5422b.get(next).a(stack.pop(), pop);
                } else if (b(next)) {
                    Object pop2 = stack.pop();
                    if (pop2 instanceof List) {
                        a2 = this.c.get(next).a((List) pop2);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(pop2);
                        a2 = this.c.get(next).a(arrayList);
                    }
                } else {
                    a2 = this.e.a(g(next));
                }
                stack.push(a2);
            }
        }
        return stack.pop();
    }

    public void a(e eVar) {
        synchronized (this.c) {
            this.c.put(eVar.a(), eVar);
        }
    }

    public void a(g gVar) {
        synchronized (this.f5422b) {
            this.f5422b.put(gVar.a(), gVar);
        }
    }

    public boolean a(String str) {
        boolean containsKey;
        synchronized (this.f5422b) {
            containsKey = this.f5422b.containsKey(str);
        }
        return containsKey;
    }

    public boolean a(String str, String str2) {
        if (a(str)) {
            if (a(str2)) {
                g gVar = this.f5422b.get(str2);
                g gVar2 = this.f5422b.get(str);
                if (gVar.b() == gVar2.b()) {
                    if (gVar2.c()) {
                        return true;
                    }
                } else if (gVar2.b() < gVar.b()) {
                    return true;
                }
            } else if (b(str2)) {
                return true;
            }
        }
        return false;
    }

    public boolean b(String str) {
        boolean containsKey;
        synchronized (this.c) {
            containsKey = this.c.containsKey(str);
        }
        return containsKey;
    }

    public boolean c(String str) {
        boolean containsKey;
        synchronized (this.d) {
            containsKey = this.d.containsKey(str);
        }
        return containsKey;
    }

    public g d(String str) {
        g gVar;
        synchronized (this.f5422b) {
            gVar = this.f5422b.get(str);
        }
        return gVar;
    }

    public e e(String str) {
        e eVar;
        synchronized (this.c) {
            eVar = this.c.get(str);
        }
        return eVar;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00a4  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<java.lang.String> f(java.lang.String r8) {
        /*
            r7 = this;
            if (r8 == 0) goto L_0x00f0
            boolean r0 = r8.isEmpty()
            if (r0 == 0) goto L_0x000a
            goto L_0x00f0
        L_0x000a:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.webengage.sdk.android.actions.rules.a.f r1 = new com.webengage.sdk.android.actions.rules.a.f
            r1.<init>(r8)
            java.util.ArrayDeque r8 = new java.util.ArrayDeque
            r8.<init>()
            java.lang.String r2 = ""
        L_0x001b:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L_0x00e1
            java.lang.String r3 = r1.next()
            boolean r4 = r3.isEmpty()
            if (r4 != 0) goto L_0x001b
            boolean r4 = r7.a((java.lang.String) r3)
            if (r4 != 0) goto L_0x00c1
            boolean r4 = r7.b(r3)
            if (r4 == 0) goto L_0x0039
            goto L_0x00c1
        L_0x0039:
            java.lang.String r4 = "("
            boolean r5 = r3.equalsIgnoreCase(r4)
            if (r5 != 0) goto L_0x00db
            java.lang.String r5 = "["
            boolean r6 = r3.equalsIgnoreCase(r5)
            if (r6 == 0) goto L_0x004b
            goto L_0x00db
        L_0x004b:
            java.lang.String r6 = ")"
            boolean r6 = r3.equalsIgnoreCase(r6)
            if (r6 != 0) goto L_0x006a
            java.lang.String r6 = "]"
            boolean r6 = r3.equalsIgnoreCase(r6)
            if (r6 == 0) goto L_0x005c
            goto L_0x006a
        L_0x005c:
            java.lang.String r2 = r3.trim()
            boolean r3 = r2.isEmpty()
            if (r3 != 0) goto L_0x001b
            r0.add(r2)
            goto L_0x001b
        L_0x006a:
            boolean r6 = r2.equalsIgnoreCase(r4)
            if (r6 != 0) goto L_0x0076
            boolean r2 = r2.equalsIgnoreCase(r5)
            if (r2 == 0) goto L_0x007b
        L_0x0076:
            java.lang.String r2 = "null"
        L_0x0078:
            r0.add(r2)
        L_0x007b:
            boolean r2 = r8.isEmpty()
            if (r2 != 0) goto L_0x009e
            java.lang.Object r2 = r8.peek()
            java.lang.String r2 = (java.lang.String) r2
            boolean r2 = r2.equalsIgnoreCase(r4)
            if (r2 != 0) goto L_0x009e
            java.lang.Object r2 = r8.peek()
            java.lang.String r2 = (java.lang.String) r2
            boolean r2 = r2.equalsIgnoreCase(r5)
            if (r2 != 0) goto L_0x009e
            java.lang.Object r2 = r8.pop()
            goto L_0x0078
        L_0x009e:
            boolean r2 = r8.isEmpty()
            if (r2 != 0) goto L_0x00a7
            r8.pop()
        L_0x00a7:
            boolean r2 = r8.isEmpty()
            if (r2 != 0) goto L_0x00de
            java.lang.Object r2 = r8.peek()
            java.lang.String r2 = (java.lang.String) r2
            boolean r2 = r7.b(r2)
            if (r2 == 0) goto L_0x00de
            java.lang.Object r2 = r8.pop()
            r0.add(r2)
            goto L_0x00de
        L_0x00c1:
            boolean r2 = r8.isEmpty()
            if (r2 != 0) goto L_0x00db
            java.lang.Object r2 = r8.peek()
            java.lang.String r2 = (java.lang.String) r2
            boolean r2 = r7.a(r3, r2)
            if (r2 == 0) goto L_0x00db
            java.lang.Object r2 = r8.pop()
            r0.add(r2)
            goto L_0x00c1
        L_0x00db:
            r8.push(r3)
        L_0x00de:
            r2 = r3
            goto L_0x001b
        L_0x00e1:
            boolean r1 = r8.isEmpty()
            if (r1 != 0) goto L_0x00ef
            java.lang.Object r1 = r8.pop()
            r0.add(r1)
            goto L_0x00e1
        L_0x00ef:
            return r0
        L_0x00f0:
            r8 = 0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.rules.a.c.f(java.lang.String):java.util.List");
    }

    public String g(String str) {
        String str2 = "";
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == '\\') {
                i++;
            } else {
                i >>= 1;
                while (i != 0) {
                    str2 = str2 + "\\";
                    i--;
                }
                str2 = str2 + r3;
            }
        }
        for (int i3 = i >> 1; i3 != 0; i3--) {
            str2 = str2 + "\\";
        }
        return str2;
    }

    public boolean h(String str) {
        return a().a(str) || a().b(str) || a().c(str) || str.equals("[") || str.equals("]") || str.equals("(") || str.equals(")");
    }
}
