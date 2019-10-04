package com.google.gson.b;

import com.google.gson.internal.b;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.HashMap;
import java.util.Map;

public class a<T> {
    final int hashCode;
    final Class<? super T> rawType;
    final Type type;

    protected a() {
        this.type = getSuperclassTypeParameter(getClass());
        this.rawType = b.getRawType(this.type);
        this.hashCode = this.type.hashCode();
    }

    a(Type type2) {
        this.type = b.canonicalize((Type) com.google.gson.internal.a.checkNotNull(type2));
        this.rawType = b.getRawType(this.type);
        this.hashCode = this.type.hashCode();
    }

    static Type getSuperclassTypeParameter(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return b.canonicalize(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    public final Class<? super T> getRawType() {
        return this.rawType;
    }

    public final Type getType() {
        return this.type;
    }

    @Deprecated
    public boolean isAssignableFrom(Class<?> cls) {
        return isAssignableFrom((Type) cls);
    }

    @Deprecated
    public boolean isAssignableFrom(Type type2) {
        if (type2 == null) {
            return false;
        }
        if (this.type.equals(type2)) {
            return true;
        }
        Type type3 = this.type;
        if (type3 instanceof Class) {
            return this.rawType.isAssignableFrom(b.getRawType(type2));
        }
        if (type3 instanceof ParameterizedType) {
            return isAssignableFrom(type2, (ParameterizedType) type3, new HashMap());
        }
        if (type3 instanceof GenericArrayType) {
            return this.rawType.isAssignableFrom(b.getRawType(type2)) && isAssignableFrom(type2, (GenericArrayType) this.type);
        }
        throw buildUnexpectedTypeError(type3, Class.class, ParameterizedType.class, GenericArrayType.class);
    }

    @Deprecated
    public boolean isAssignableFrom(a<?> aVar) {
        return isAssignableFrom(aVar.getType());
    }

    private static boolean isAssignableFrom(Type type2, GenericArrayType genericArrayType) {
        Class<?> cls;
        Type genericComponentType = genericArrayType.getGenericComponentType();
        if (!(genericComponentType instanceof ParameterizedType)) {
            return true;
        }
        if (type2 instanceof GenericArrayType) {
            cls = ((GenericArrayType) type2).getGenericComponentType();
        } else {
            boolean z = type2 instanceof Class;
            cls = type2;
            if (z) {
                Class<?> cls2 = (Class) type2;
                while (cls2.isArray()) {
                    cls2 = cls2.getComponentType();
                }
                cls = cls2;
            }
        }
        return isAssignableFrom(cls, (ParameterizedType) genericComponentType, new HashMap());
    }

    private static boolean isAssignableFrom(Type type2, ParameterizedType parameterizedType, Map<String, Type> map) {
        while (true) {
            if (type2 == null) {
                return false;
            }
            if (parameterizedType.equals(type2)) {
                return true;
            }
            Class<?> rawType2 = b.getRawType(type2);
            ParameterizedType parameterizedType2 = null;
            if (type2 instanceof ParameterizedType) {
                parameterizedType2 = (ParameterizedType) type2;
            }
            if (parameterizedType2 != null) {
                Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
                TypeVariable[] typeParameters = rawType2.getTypeParameters();
                for (int i = 0; i < actualTypeArguments.length; i++) {
                    Type type3 = actualTypeArguments[i];
                    TypeVariable typeVariable = typeParameters[i];
                    while (type3 instanceof TypeVariable) {
                        type3 = map.get(((TypeVariable) type3).getName());
                    }
                    map.put(typeVariable.getName(), type3);
                }
                if (typeEquals(parameterizedType2, parameterizedType, map)) {
                    return true;
                }
            }
            for (Type isAssignableFrom : rawType2.getGenericInterfaces()) {
                if (isAssignableFrom(isAssignableFrom, parameterizedType, new HashMap(map))) {
                    return true;
                }
            }
            type2 = rawType2.getGenericSuperclass();
            map = new HashMap<>(map);
        }
    }

    private static boolean typeEquals(ParameterizedType parameterizedType, ParameterizedType parameterizedType2, Map<String, Type> map) {
        if (!parameterizedType.getRawType().equals(parameterizedType2.getRawType())) {
            return false;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
        for (int i = 0; i < actualTypeArguments.length; i++) {
            if (!matches(actualTypeArguments[i], actualTypeArguments2[i], map)) {
                return false;
            }
        }
        return true;
    }

    private static AssertionError buildUnexpectedTypeError(Type type2, Class<?>... clsArr) {
        StringBuilder sb = new StringBuilder("Unexpected type. Expected one of: ");
        for (Class<?> name : clsArr) {
            sb.append(name.getName());
            sb.append(", ");
        }
        sb.append("but got: ");
        sb.append(type2.getClass().getName());
        sb.append(", for type token: ");
        sb.append(type2.toString());
        sb.append('.');
        return new AssertionError(sb.toString());
    }

    private static boolean matches(Type type2, Type type3, Map<String, Type> map) {
        return type3.equals(type2) || ((type2 instanceof TypeVariable) && type3.equals(map.get(((TypeVariable) type2).getName())));
    }

    public final int hashCode() {
        return this.hashCode;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && b.equals(this.type, ((a) obj).type);
    }

    public final String toString() {
        return b.typeToString(this.type);
    }

    public static a<?> get(Type type2) {
        return new a<>(type2);
    }

    public static <T> a<T> get(Class<T> cls) {
        return new a<>(cls);
    }

    public static a<?> getParameterized(Type type2, Type... typeArr) {
        return new a<>(b.newParameterizedTypeWithOwner(null, type2, typeArr));
    }

    public static a<?> getArray(Type type2) {
        return new a<>(b.arrayOf(type2));
    }
}
