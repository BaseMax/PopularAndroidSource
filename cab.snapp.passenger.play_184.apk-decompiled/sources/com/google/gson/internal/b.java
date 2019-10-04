package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Properties;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Type[] f4124a = new Type[0];

    static final class a implements Serializable, GenericArrayType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f4125a;

        public a(Type type) {
            this.f4125a = b.canonicalize(type);
        }

        public final Type getGenericComponentType() {
            return this.f4125a;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && b.equals(this, (GenericArrayType) obj);
        }

        public final int hashCode() {
            return this.f4125a.hashCode();
        }

        public final String toString() {
            return b.typeToString(this.f4125a) + "[]";
        }
    }

    /* renamed from: com.google.gson.internal.b$b  reason: collision with other inner class name */
    static final class C0078b implements Serializable, ParameterizedType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f4126a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f4127b;
        private final Type[] c;

        public C0078b(Type type, Type type2, Type... typeArr) {
            Type type3;
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                boolean z = true;
                boolean z2 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
                if (type == null && !z2) {
                    z = false;
                }
                a.checkArgument(z);
            }
            if (type == null) {
                type3 = null;
            } else {
                type3 = b.canonicalize(type);
            }
            this.f4126a = type3;
            this.f4127b = b.canonicalize(type2);
            this.c = (Type[]) typeArr.clone();
            int length = this.c.length;
            for (int i = 0; i < length; i++) {
                a.checkNotNull(this.c[i]);
                b.a(this.c[i]);
                Type[] typeArr2 = this.c;
                typeArr2[i] = b.canonicalize(typeArr2[i]);
            }
        }

        public final Type[] getActualTypeArguments() {
            return (Type[]) this.c.clone();
        }

        public final Type getRawType() {
            return this.f4127b;
        }

        public final Type getOwnerType() {
            return this.f4126a;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && b.equals(this, (ParameterizedType) obj);
        }

        public final int hashCode() {
            return (Arrays.hashCode(this.c) ^ this.f4127b.hashCode()) ^ b.a((Object) this.f4126a);
        }

        public final String toString() {
            int length = this.c.length;
            if (length == 0) {
                return b.typeToString(this.f4127b);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(b.typeToString(this.f4127b));
            sb.append("<");
            sb.append(b.typeToString(this.c[0]));
            for (int i = 1; i < length; i++) {
                sb.append(", ");
                sb.append(b.typeToString(this.c[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    static final class c implements Serializable, WildcardType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f4128a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f4129b;

        public c(Type[] typeArr, Type[] typeArr2) {
            boolean z = true;
            a.checkArgument(typeArr2.length <= 1);
            a.checkArgument(typeArr.length == 1);
            if (typeArr2.length == 1) {
                a.checkNotNull(typeArr2[0]);
                b.a(typeArr2[0]);
                a.checkArgument(typeArr[0] != Object.class ? false : z);
                this.f4129b = b.canonicalize(typeArr2[0]);
                this.f4128a = Object.class;
                return;
            }
            a.checkNotNull(typeArr[0]);
            b.a(typeArr[0]);
            this.f4129b = null;
            this.f4128a = b.canonicalize(typeArr[0]);
        }

        public final Type[] getUpperBounds() {
            return new Type[]{this.f4128a};
        }

        public final Type[] getLowerBounds() {
            Type type = this.f4129b;
            if (type == null) {
                return b.f4124a;
            }
            return new Type[]{type};
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && b.equals(this, (WildcardType) obj);
        }

        public final int hashCode() {
            Type type = this.f4129b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f4128a.hashCode() + 31);
        }

        public final String toString() {
            if (this.f4129b != null) {
                return "? super " + b.typeToString(this.f4129b);
            } else if (this.f4128a == Object.class) {
                return "?";
            } else {
                return "? extends " + b.typeToString(this.f4128a);
            }
        }
    }

    private b() {
        throw new UnsupportedOperationException();
    }

    public static ParameterizedType newParameterizedTypeWithOwner(Type type, Type type2, Type... typeArr) {
        return new C0078b(type, type2, typeArr);
    }

    public static GenericArrayType arrayOf(Type type) {
        return new a(type);
    }

    public static WildcardType subtypeOf(Type type) {
        Type[] typeArr;
        if (type instanceof WildcardType) {
            typeArr = ((WildcardType) type).getUpperBounds();
        } else {
            typeArr = new Type[]{type};
        }
        return new c(typeArr, f4124a);
    }

    public static WildcardType supertypeOf(Type type) {
        Type[] typeArr;
        if (type instanceof WildcardType) {
            typeArr = ((WildcardType) type).getLowerBounds();
        } else {
            typeArr = new Type[]{type};
        }
        return new c(new Type[]{Object.class}, typeArr);
    }

    /* JADX WARNING: type inference failed for: r0v8, types: [com.google.gson.internal.b$a] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.reflect.Type canonicalize(java.lang.reflect.Type r3) {
        /*
            boolean r0 = r3 instanceof java.lang.Class
            if (r0 == 0) goto L_0x001d
            java.lang.Class r3 = (java.lang.Class) r3
            boolean r0 = r3.isArray()
            if (r0 == 0) goto L_0x001a
            com.google.gson.internal.b$a r0 = new com.google.gson.internal.b$a
            java.lang.Class r3 = r3.getComponentType()
            java.lang.reflect.Type r3 = canonicalize(r3)
            r0.<init>(r3)
            r3 = r0
        L_0x001a:
            java.lang.reflect.Type r3 = (java.lang.reflect.Type) r3
            return r3
        L_0x001d:
            boolean r0 = r3 instanceof java.lang.reflect.ParameterizedType
            if (r0 == 0) goto L_0x0035
            java.lang.reflect.ParameterizedType r3 = (java.lang.reflect.ParameterizedType) r3
            com.google.gson.internal.b$b r0 = new com.google.gson.internal.b$b
            java.lang.reflect.Type r1 = r3.getOwnerType()
            java.lang.reflect.Type r2 = r3.getRawType()
            java.lang.reflect.Type[] r3 = r3.getActualTypeArguments()
            r0.<init>(r1, r2, r3)
            return r0
        L_0x0035:
            boolean r0 = r3 instanceof java.lang.reflect.GenericArrayType
            if (r0 == 0) goto L_0x0045
            java.lang.reflect.GenericArrayType r3 = (java.lang.reflect.GenericArrayType) r3
            com.google.gson.internal.b$a r0 = new com.google.gson.internal.b$a
            java.lang.reflect.Type r3 = r3.getGenericComponentType()
            r0.<init>(r3)
            return r0
        L_0x0045:
            boolean r0 = r3 instanceof java.lang.reflect.WildcardType
            if (r0 == 0) goto L_0x0059
            java.lang.reflect.WildcardType r3 = (java.lang.reflect.WildcardType) r3
            com.google.gson.internal.b$c r0 = new com.google.gson.internal.b$c
            java.lang.reflect.Type[] r1 = r3.getUpperBounds()
            java.lang.reflect.Type[] r3 = r3.getLowerBounds()
            r0.<init>(r1, r3)
            return r0
        L_0x0059:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.b.canonicalize(java.lang.reflect.Type):java.lang.reflect.Type");
    }

    public static Class<?> getRawType(Type type) {
        String str;
        while (!(type instanceof Class)) {
            if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                a.checkArgument(rawType instanceof Class);
                return (Class) rawType;
            } else if (type instanceof GenericArrayType) {
                return Array.newInstance(getRawType(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
            } else {
                if (type instanceof TypeVariable) {
                    return Object.class;
                }
                if (type instanceof WildcardType) {
                    type = ((WildcardType) type).getUpperBounds()[0];
                } else {
                    if (type == null) {
                        str = "null";
                    } else {
                        str = type.getClass().getName();
                    }
                    throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + str);
                }
            }
        }
        return (Class) type;
    }

    public static boolean equals(Type type, Type type2) {
        while (type != type2) {
            if (type instanceof Class) {
                return type.equals(type2);
            }
            if (type instanceof ParameterizedType) {
                if (!(type2 instanceof ParameterizedType)) {
                    return false;
                }
                ParameterizedType parameterizedType = (ParameterizedType) type;
                ParameterizedType parameterizedType2 = (ParameterizedType) type2;
                Type ownerType = parameterizedType.getOwnerType();
                Type ownerType2 = parameterizedType2.getOwnerType();
                if (!(ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) || !parameterizedType.getRawType().equals(parameterizedType2.getRawType()) || !Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments())) {
                    return false;
                }
                return true;
            } else if (type instanceof GenericArrayType) {
                if (!(type2 instanceof GenericArrayType)) {
                    return false;
                }
                type = ((GenericArrayType) type).getGenericComponentType();
                type2 = ((GenericArrayType) type2).getGenericComponentType();
            } else if (type instanceof WildcardType) {
                if (!(type2 instanceof WildcardType)) {
                    return false;
                }
                WildcardType wildcardType = (WildcardType) type;
                WildcardType wildcardType2 = (WildcardType) type2;
                if (!Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) || !Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds())) {
                    return false;
                }
                return true;
            } else if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
                return false;
            } else {
                TypeVariable typeVariable = (TypeVariable) type;
                TypeVariable typeVariable2 = (TypeVariable) type2;
                if (typeVariable.getGenericDeclaration() != typeVariable2.getGenericDeclaration() || !typeVariable.getName().equals(typeVariable2.getName())) {
                    return false;
                }
                return true;
            }
        }
        return true;
    }

    static int a(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static String typeToString(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.lang.Class<?>, code=java.lang.Class<? super ?>, for r5v0, types: [java.lang.Class<?>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.reflect.Type a(java.lang.reflect.Type r4, java.lang.Class<? super java.lang.Object> r5, java.lang.Class<?> r6) {
        /*
        L_0x0000:
            if (r6 != r5) goto L_0x0003
            return r4
        L_0x0003:
            boolean r4 = r6.isInterface()
            if (r4 == 0) goto L_0x0030
            java.lang.Class[] r4 = r5.getInterfaces()
            r0 = 0
            int r1 = r4.length
        L_0x000f:
            if (r0 >= r1) goto L_0x0030
            r2 = r4[r0]
            if (r2 != r6) goto L_0x001c
            java.lang.reflect.Type[] r4 = r5.getGenericInterfaces()
            r4 = r4[r0]
            return r4
        L_0x001c:
            r2 = r4[r0]
            boolean r2 = r6.isAssignableFrom(r2)
            if (r2 == 0) goto L_0x002d
            java.lang.reflect.Type[] r5 = r5.getGenericInterfaces()
            r5 = r5[r0]
            r4 = r4[r0]
            goto L_0x004f
        L_0x002d:
            int r0 = r0 + 1
            goto L_0x000f
        L_0x0030:
            boolean r4 = r5.isInterface()
            if (r4 != 0) goto L_0x0055
        L_0x0036:
            java.lang.Class<java.lang.Object> r4 = java.lang.Object.class
            if (r5 == r4) goto L_0x0055
            java.lang.Class r4 = r5.getSuperclass()
            if (r4 != r6) goto L_0x0045
            java.lang.reflect.Type r4 = r5.getGenericSuperclass()
            return r4
        L_0x0045:
            boolean r0 = r6.isAssignableFrom(r4)
            if (r0 == 0) goto L_0x0053
            java.lang.reflect.Type r5 = r5.getGenericSuperclass()
        L_0x004f:
            r3 = r5
            r5 = r4
            r4 = r3
            goto L_0x0000
        L_0x0053:
            r5 = r4
            goto L_0x0036
        L_0x0055:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.b.a(java.lang.reflect.Type, java.lang.Class, java.lang.Class):java.lang.reflect.Type");
    }

    private static Type b(Type type, Class<?> cls, Class<?> cls2) {
        if (type instanceof WildcardType) {
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        a.checkArgument(cls2.isAssignableFrom(cls));
        return resolve(type, cls, a(type, cls, cls2));
    }

    public static Type getArrayComponentType(Type type) {
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType) type).getGenericComponentType();
        }
        return ((Class) type).getComponentType();
    }

    public static Type getCollectionElementType(Type type, Class<?> cls) {
        Type b2 = b(type, cls, Collection.class);
        if (b2 instanceof WildcardType) {
            b2 = ((WildcardType) b2).getUpperBounds()[0];
        }
        if (b2 instanceof ParameterizedType) {
            return ((ParameterizedType) b2).getActualTypeArguments()[0];
        }
        return Object.class;
    }

    public static Type[] getMapKeyAndValueTypes(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type b2 = b(type, cls, Map.class);
        if (b2 instanceof ParameterizedType) {
            return ((ParameterizedType) b2).getActualTypeArguments();
        }
        return new Type[]{Object.class, Object.class};
    }

    public static Type resolve(Type type, Class<?> cls, Type type2) {
        return a(type, cls, type2, new HashSet());
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v1, resolved type: java.lang.Class} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v2, resolved type: java.lang.reflect.WildcardType} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v13, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v5, resolved type: java.lang.reflect.Type[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v20, resolved type: java.lang.reflect.WildcardType} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v21, resolved type: java.lang.reflect.TypeVariable} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v9, resolved type: java.lang.Class} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v10, resolved type: java.lang.Class} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v17, resolved type: java.lang.reflect.GenericArrayType} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v18, resolved type: java.lang.reflect.WildcardType} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v19, resolved type: java.lang.reflect.WildcardType} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v20, resolved type: java.lang.reflect.WildcardType} */
    /* JADX WARNING: Failed to insert additional move for type inference */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.reflect.Type a(java.lang.reflect.Type r8, java.lang.Class<?> r9, java.lang.reflect.Type r10, java.util.Collection<java.lang.reflect.TypeVariable> r11) {
        /*
        L_0x0000:
            boolean r0 = r10 instanceof java.lang.reflect.TypeVariable
            r1 = 0
            if (r0 == 0) goto L_0x004d
            r0 = r10
            java.lang.reflect.TypeVariable r0 = (java.lang.reflect.TypeVariable) r0
            boolean r2 = r11.contains(r0)
            if (r2 == 0) goto L_0x000f
            return r10
        L_0x000f:
            r11.add(r0)
            java.lang.reflect.GenericDeclaration r10 = r0.getGenericDeclaration()
            boolean r2 = r10 instanceof java.lang.Class
            if (r2 == 0) goto L_0x001d
            java.lang.Class r10 = (java.lang.Class) r10
            goto L_0x001e
        L_0x001d:
            r10 = 0
        L_0x001e:
            if (r10 == 0) goto L_0x0049
            java.lang.reflect.Type r2 = a(r8, r9, r10)
            boolean r3 = r2 instanceof java.lang.reflect.ParameterizedType
            if (r3 == 0) goto L_0x0049
            java.lang.reflect.TypeVariable[] r10 = r10.getTypeParameters()
            int r3 = r10.length
        L_0x002d:
            if (r1 >= r3) goto L_0x0043
            r4 = r10[r1]
            boolean r4 = r0.equals(r4)
            if (r4 == 0) goto L_0x0040
            java.lang.reflect.ParameterizedType r2 = (java.lang.reflect.ParameterizedType) r2
            java.lang.reflect.Type[] r10 = r2.getActualTypeArguments()
            r10 = r10[r1]
            goto L_0x004a
        L_0x0040:
            int r1 = r1 + 1
            goto L_0x002d
        L_0x0043:
            java.util.NoSuchElementException r8 = new java.util.NoSuchElementException
            r8.<init>()
            throw r8
        L_0x0049:
            r10 = r0
        L_0x004a:
            if (r10 != r0) goto L_0x0000
            return r10
        L_0x004d:
            boolean r0 = r10 instanceof java.lang.Class
            if (r0 == 0) goto L_0x006a
            r0 = r10
            java.lang.Class r0 = (java.lang.Class) r0
            boolean r2 = r0.isArray()
            if (r2 == 0) goto L_0x006a
            java.lang.Class r10 = r0.getComponentType()
            java.lang.reflect.Type r8 = a(r8, r9, r10, r11)
            if (r10 != r8) goto L_0x0065
            return r0
        L_0x0065:
            java.lang.reflect.GenericArrayType r8 = arrayOf(r8)
            return r8
        L_0x006a:
            boolean r0 = r10 instanceof java.lang.reflect.GenericArrayType
            if (r0 == 0) goto L_0x0080
            java.lang.reflect.GenericArrayType r10 = (java.lang.reflect.GenericArrayType) r10
            java.lang.reflect.Type r0 = r10.getGenericComponentType()
            java.lang.reflect.Type r8 = a(r8, r9, r0, r11)
            if (r0 != r8) goto L_0x007b
            return r10
        L_0x007b:
            java.lang.reflect.GenericArrayType r8 = arrayOf(r8)
            return r8
        L_0x0080:
            boolean r0 = r10 instanceof java.lang.reflect.ParameterizedType
            r2 = 1
            if (r0 == 0) goto L_0x00c0
            java.lang.reflect.ParameterizedType r10 = (java.lang.reflect.ParameterizedType) r10
            java.lang.reflect.Type r0 = r10.getOwnerType()
            java.lang.reflect.Type r3 = a(r8, r9, r0, r11)
            if (r3 == r0) goto L_0x0093
            r0 = 1
            goto L_0x0094
        L_0x0093:
            r0 = 0
        L_0x0094:
            java.lang.reflect.Type[] r4 = r10.getActualTypeArguments()
            int r5 = r4.length
        L_0x0099:
            if (r1 >= r5) goto L_0x00b4
            r6 = r4[r1]
            java.lang.reflect.Type r6 = a(r8, r9, r6, r11)
            r7 = r4[r1]
            if (r6 == r7) goto L_0x00b1
            if (r0 != 0) goto L_0x00af
            java.lang.Object r0 = r4.clone()
            r4 = r0
            java.lang.reflect.Type[] r4 = (java.lang.reflect.Type[]) r4
            r0 = 1
        L_0x00af:
            r4[r1] = r6
        L_0x00b1:
            int r1 = r1 + 1
            goto L_0x0099
        L_0x00b4:
            if (r0 == 0) goto L_0x00bf
            java.lang.reflect.Type r8 = r10.getRawType()
            java.lang.reflect.ParameterizedType r8 = newParameterizedTypeWithOwner(r3, r8, r4)
            return r8
        L_0x00bf:
            return r10
        L_0x00c0:
            boolean r0 = r10 instanceof java.lang.reflect.WildcardType
            if (r0 == 0) goto L_0x00f2
            java.lang.reflect.WildcardType r10 = (java.lang.reflect.WildcardType) r10
            java.lang.reflect.Type[] r0 = r10.getLowerBounds()
            java.lang.reflect.Type[] r3 = r10.getUpperBounds()
            int r4 = r0.length
            if (r4 != r2) goto L_0x00e0
            r2 = r0[r1]
            java.lang.reflect.Type r8 = a(r8, r9, r2, r11)
            r9 = r0[r1]
            if (r8 == r9) goto L_0x00f2
            java.lang.reflect.WildcardType r8 = supertypeOf(r8)
            return r8
        L_0x00e0:
            int r0 = r3.length
            if (r0 != r2) goto L_0x00f2
            r0 = r3[r1]
            java.lang.reflect.Type r8 = a(r8, r9, r0, r11)     // Catch:{ all -> 0x00f3 }
            r9 = r3[r1]
            if (r8 == r9) goto L_0x00f2
            java.lang.reflect.WildcardType r8 = subtypeOf(r8)
            return r8
        L_0x00f2:
            return r10
        L_0x00f3:
            r8 = move-exception
            goto L_0x00f6
        L_0x00f5:
            throw r8
        L_0x00f6:
            goto L_0x00f5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.b.a(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type, java.util.Collection):java.lang.reflect.Type");
    }

    static void a(Type type) {
        a.checkArgument(!(type instanceof Class) || !((Class) type).isPrimitive());
    }
}
