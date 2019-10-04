package com.crashlytics.android.core;

public final class WireFormat {
    public static final int MESSAGE_SET_ITEM = 1;
    public static final int MESSAGE_SET_ITEM_END_TAG = makeTag(1, 4);
    public static final int MESSAGE_SET_ITEM_TAG = makeTag(1, 3);
    public static final int MESSAGE_SET_MESSAGE = 3;
    public static final int MESSAGE_SET_MESSAGE_TAG = makeTag(3, 2);
    public static final int MESSAGE_SET_TYPE_ID = 2;
    public static final int MESSAGE_SET_TYPE_ID_TAG = makeTag(2, 0);
    public static final int TAG_TYPE_BITS = 3;
    public static final int TAG_TYPE_MASK = 7;
    public static final int WIRETYPE_END_GROUP = 4;
    public static final int WIRETYPE_FIXED32 = 5;
    public static final int WIRETYPE_FIXED64 = 1;
    public static final int WIRETYPE_LENGTH_DELIMITED = 2;
    public static final int WIRETYPE_START_GROUP = 3;
    public static final int WIRETYPE_VARINT = 0;

    enum FieldType {
        DOUBLE(JavaType.DOUBLE, 1),
        FLOAT(JavaType.FLOAT, 5),
        INT64(JavaType.LONG, 0),
        UINT64(JavaType.LONG, 0),
        INT32(JavaType.INT, 0),
        FIXED64(JavaType.LONG, 1),
        FIXED32(JavaType.INT, 5),
        BOOL(JavaType.BOOLEAN, 0),
        STRING(JavaType.STRING, 2) {
            public boolean isPackable() {
                return false;
            }
        },
        GROUP(JavaType.MESSAGE, 3) {
            public boolean isPackable() {
                return false;
            }
        },
        MESSAGE(JavaType.MESSAGE, 2) {
            public boolean isPackable() {
                return false;
            }
        },
        BYTES(JavaType.BYTE_STRING, 2) {
            public boolean isPackable() {
                return false;
            }
        },
        UINT32(JavaType.INT, 0),
        ENUM(JavaType.ENUM, 0),
        SFIXED32(JavaType.INT, 5),
        SFIXED64(JavaType.LONG, 1),
        SINT32(JavaType.INT, 0),
        SINT64(JavaType.LONG, 0);
        
        public final JavaType javaType;
        public final int wireType;

        public JavaType getJavaType() {
            return this.javaType;
        }

        public int getWireType() {
            return this.wireType;
        }

        public boolean isPackable() {
            return true;
        }

        /* access modifiers changed from: public */
        FieldType(JavaType javaType2, int i2) {
            this.javaType = javaType2;
            this.wireType = i2;
        }
    }

    enum JavaType {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf(0.0f)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(false),
        STRING(""),
        BYTE_STRING(ByteString.EMPTY),
        ENUM(null),
        MESSAGE(null);
        
        public final Object defaultDefault;

        /* access modifiers changed from: public */
        JavaType(Object obj) {
            this.defaultDefault = obj;
        }

        public Object getDefaultDefault() {
            return this.defaultDefault;
        }
    }

    public static int getTagFieldNumber(int i2) {
        return i2 >>> 3;
    }

    public static int getTagWireType(int i2) {
        return i2 & 7;
    }

    public static int makeTag(int i2, int i3) {
        return (i2 << 3) | i3;
    }
}
