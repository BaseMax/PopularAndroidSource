package com.google.gson.internal;

import com.google.gson.b.a;
import com.google.gson.g;
import com.google.gson.internal.a.b;
import com.google.gson.j;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Type, g<?>> f4180a;

    /* renamed from: b  reason: collision with root package name */
    private final b f4181b = b.getInstance();

    public c(Map<Type, g<?>> map) {
        this.f4180a = map;
    }

    public final <T> h<T> get(a<T> aVar) {
        h<T> hVar;
        final Type type = aVar.getType();
        final Class<? super T> rawType = aVar.getRawType();
        final g gVar = this.f4180a.get(type);
        if (gVar != null) {
            return new h<T>() {
                public final T construct() {
                    return gVar.createInstance(type);
                }
            };
        }
        final g gVar2 = this.f4180a.get(rawType);
        if (gVar2 != null) {
            return new h<T>() {
                public final T construct() {
                    return gVar2.createInstance(type);
                }
            };
        }
        h<T> a2 = a(rawType);
        if (a2 != null) {
            return a2;
        }
        if (Collection.class.isAssignableFrom(rawType)) {
            hVar = SortedSet.class.isAssignableFrom(rawType) ? new h<T>() {
                public final T construct() {
                    return new TreeSet();
                }
            } : EnumSet.class.isAssignableFrom(rawType) ? new h<T>() {
                public final T construct() {
                    Type type = type;
                    if (type instanceof ParameterizedType) {
                        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                        if (type2 instanceof Class) {
                            return EnumSet.noneOf((Class) type2);
                        }
                        throw new j("Invalid EnumSet type: " + type.toString());
                    }
                    throw new j("Invalid EnumSet type: " + type.toString());
                }
            } : Set.class.isAssignableFrom(rawType) ? new h<T>() {
                public final T construct() {
                    return new LinkedHashSet();
                }
            } : Queue.class.isAssignableFrom(rawType) ? new h<T>() {
                public final T construct() {
                    return new ArrayDeque();
                }
            } : new h<T>() {
                public final T construct() {
                    return new ArrayList();
                }
            };
        } else if (!Map.class.isAssignableFrom(rawType)) {
            hVar = null;
        } else if (ConcurrentNavigableMap.class.isAssignableFrom(rawType)) {
            hVar = new h<T>() {
                public final T construct() {
                    return new ConcurrentSkipListMap();
                }
            };
        } else if (ConcurrentMap.class.isAssignableFrom(rawType)) {
            hVar = new h<T>() {
                public final T construct() {
                    return new ConcurrentHashMap();
                }
            };
        } else {
            hVar = SortedMap.class.isAssignableFrom(rawType) ? new h<T>() {
                public final T construct() {
                    return new TreeMap();
                }
            } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(a.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new h<T>() {
                public final T construct() {
                    return new g();
                }
            } : new h<T>() {
                public final T construct() {
                    return new LinkedHashMap();
                }
            };
        }
        return hVar != null ? hVar : new h<T>() {
            private final l d = l.create();

            public final T construct() {
                try {
                    return this.d.newInstance(rawType);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e);
                }
            }
        };
    }

    private <T> h<T> a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f4181b.makeAccessible(declaredConstructor);
            }
            return new h<T>() {
                public final T construct() {
                    try {
                        return declaredConstructor.newInstance(null);
                    } catch (InstantiationException e) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e2.getTargetException());
                    } catch (IllegalAccessException e3) {
                        throw new AssertionError(e3);
                    }
                }
            };
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public final String toString() {
        return this.f4180a.toString();
    }
}
