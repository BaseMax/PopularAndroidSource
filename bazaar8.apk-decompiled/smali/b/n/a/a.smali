.class public Lb/n/a/a;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/n/a/a$a;,
        Lb/n/a/a$c;,
        Lb/n/a/a$b;,
        Lb/n/a/a$d;
    }
.end annotation


# static fields
.field public static final A:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lb/n/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final B:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb/n/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final C:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Ljava/nio/charset/Charset;

.field public static final F:[B

.field public static final G:Ljava/util/regex/Pattern;

.field public static final H:Ljava/util/regex/Pattern;

.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static i:Ljava/text/SimpleDateFormat;

.field public static final j:[Ljava/lang/String;

.field public static final k:[I

.field public static final l:[B

.field public static final m:[Lb/n/a/a$c;

.field public static final n:[Lb/n/a/a$c;

.field public static final o:[Lb/n/a/a$c;

.field public static final p:[Lb/n/a/a$c;

.field public static final q:[Lb/n/a/a$c;

.field public static final r:Lb/n/a/a$c;

.field public static final s:[Lb/n/a/a$c;

.field public static final t:[Lb/n/a/a$c;

.field public static final u:[Lb/n/a/a$c;

.field public static final v:[Lb/n/a/a$c;

.field public static final w:[[Lb/n/a/a$c;

.field public static final x:[Lb/n/a/a$c;

.field public static final y:Lb/n/a/a$c;

.field public static final z:Lb/n/a/a$c;


# instance fields
.field public final I:Ljava/lang/String;

.field public final J:Landroid/content/res/AssetManager$AssetInputStream;

.field public K:I

.field public final L:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb/n/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public M:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public N:Ljava/nio/ByteOrder;

.field public O:Z

.field public P:I

.field public Q:I

.field public R:[B

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const/4 v0, 0x4

    .line 1
    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v5, 0x6

    .line 2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v7, v1, v8

    const/16 v10, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v6

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lb/n/a/a;->a:Ljava/util/List;

    .line 4
    new-array v1, v0, [Ljava/lang/Integer;

    aput-object v9, v1, v4

    const/4 v12, 0x7

    .line 5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v1, v8

    const/4 v14, 0x5

    .line 6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v6

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lb/n/a/a;->b:Ljava/util/List;

    .line 8
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    sput-object v1, Lb/n/a/a;->c:[I

    .line 9
    new-array v1, v2, [I

    aput v0, v1, v4

    sput-object v1, Lb/n/a/a;->d:[I

    .line 10
    new-array v1, v2, [I

    aput v10, v1, v4

    sput-object v1, Lb/n/a/a;->e:[I

    .line 11
    new-array v1, v6, [B

    fill-array-data v1, :array_1

    sput-object v1, Lb/n/a/a;->f:[B

    .line 12
    new-array v1, v5, [B

    fill-array-data v1, :array_2

    sput-object v1, Lb/n/a/a;->g:[B

    const/16 v1, 0xa

    .line 13
    new-array v10, v1, [B

    fill-array-data v10, :array_3

    sput-object v10, Lb/n/a/a;->h:[B

    const/16 v10, 0xd

    .line 14
    new-array v1, v10, [Ljava/lang/String;

    const-string v18, ""

    aput-object v18, v1, v4

    const-string v18, "BYTE"

    aput-object v18, v1, v2

    const-string v18, "STRING"

    aput-object v18, v1, v8

    const-string v18, "USHORT"

    aput-object v18, v1, v6

    const-string v18, "ULONG"

    aput-object v18, v1, v0

    const-string v18, "URATIONAL"

    aput-object v18, v1, v14

    const-string v18, "SBYTE"

    aput-object v18, v1, v5

    const-string v18, "UNDEFINED"

    aput-object v18, v1, v12

    const-string v18, "SSHORT"

    const/16 v16, 0x8

    aput-object v18, v1, v16

    const/16 v10, 0x9

    const-string v19, "SLONG"

    aput-object v19, v1, v10

    const-string v19, "SRATIONAL"

    const/16 v17, 0xa

    aput-object v19, v1, v17

    const/16 v10, 0xb

    const-string v20, "SINGLE"

    aput-object v20, v1, v10

    const/16 v10, 0xc

    const-string v21, "DOUBLE"

    aput-object v21, v1, v10

    sput-object v1, Lb/n/a/a;->j:[Ljava/lang/String;

    const/16 v1, 0xe

    .line 15
    new-array v10, v1, [I

    fill-array-data v10, :array_4

    sput-object v10, Lb/n/a/a;->k:[I

    const/16 v10, 0x8

    .line 16
    new-array v1, v10, [B

    fill-array-data v1, :array_5

    sput-object v1, Lb/n/a/a;->l:[B

    const/16 v1, 0x29

    .line 17
    new-array v1, v1, [Lb/n/a/a$c;

    new-instance v10, Lb/n/a/a$c;

    const-string v12, "NewSubfileType"

    const/16 v5, 0xfe

    invoke-direct {v10, v12, v5, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v10, v1, v4

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "SubfileType"

    const/16 v12, 0xff

    invoke-direct {v5, v10, v12, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v1, v2

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "ImageWidth"

    const/16 v12, 0x100

    invoke-direct {v5, v10, v12, v6, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    aput-object v5, v1, v8

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "ImageLength"

    const/16 v12, 0x101

    invoke-direct {v5, v10, v12, v6, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    aput-object v5, v1, v6

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "BitsPerSample"

    const/16 v12, 0x102

    invoke-direct {v5, v10, v12, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v1, v0

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "Compression"

    const/16 v12, 0x103

    invoke-direct {v5, v10, v12, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v1, v14

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "PhotometricInterpretation"

    const/16 v12, 0x106

    invoke-direct {v5, v10, v12, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x6

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "ImageDescription"

    const/16 v12, 0x10e

    invoke-direct {v5, v10, v12, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x7

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "Make"

    const/16 v12, 0x10f

    invoke-direct {v5, v10, v12, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x8

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "Model"

    const/16 v12, 0x110

    invoke-direct {v5, v10, v12, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x9

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "StripOffsets"

    const/16 v12, 0x111

    invoke-direct {v5, v10, v12, v6, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v10, 0xa

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "Orientation"

    const/16 v12, 0x112

    invoke-direct {v5, v10, v12, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xb

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "SamplesPerPixel"

    const/16 v12, 0x115

    invoke-direct {v5, v10, v12, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xc

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "RowsPerStrip"

    const/16 v12, 0x116

    invoke-direct {v5, v10, v12, v6, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v10, 0xd

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "StripByteCounts"

    const/16 v12, 0x117

    invoke-direct {v5, v10, v12, v6, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v10, 0xe

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "XResolution"

    const/16 v12, 0x11a

    invoke-direct {v5, v10, v12, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xf

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "YResolution"

    const/16 v12, 0x11b

    invoke-direct {v5, v10, v12, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x10

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "PlanarConfiguration"

    const/16 v12, 0x11c

    invoke-direct {v5, v10, v12, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x11

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "ResolutionUnit"

    const/16 v12, 0x128

    invoke-direct {v5, v10, v12, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x12

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "TransferFunction"

    const/16 v12, 0x12d

    invoke-direct {v5, v10, v12, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x13

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "Software"

    const/16 v12, 0x131

    invoke-direct {v5, v10, v12, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x14

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "DateTime"

    const/16 v12, 0x132

    invoke-direct {v5, v10, v12, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x15

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "Artist"

    const/16 v12, 0x13b

    invoke-direct {v5, v10, v12, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x16

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "WhitePoint"

    const/16 v12, 0x13e

    invoke-direct {v5, v10, v12, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x17

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "PrimaryChromaticities"

    const/16 v12, 0x13f

    invoke-direct {v5, v10, v12, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x18

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "SubIFDPointer"

    const/16 v12, 0x14a

    invoke-direct {v5, v10, v12, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x19

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "JPEGInterchangeFormat"

    const/16 v12, 0x201

    invoke-direct {v5, v10, v12, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x1a

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "JPEGInterchangeFormatLength"

    const/16 v12, 0x202

    invoke-direct {v5, v10, v12, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x1b

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "YCbCrCoefficients"

    const/16 v12, 0x211

    invoke-direct {v5, v10, v12, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x1c

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "YCbCrSubSampling"

    const/16 v12, 0x212

    invoke-direct {v5, v10, v12, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x1d

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "YCbCrPositioning"

    const/16 v12, 0x213

    invoke-direct {v5, v10, v12, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x1e

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "ReferenceBlackWhite"

    const/16 v12, 0x214

    invoke-direct {v5, v10, v12, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x1f

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "Copyright"

    const v12, 0x8298

    invoke-direct {v5, v10, v12, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x20

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "ExifIFDPointer"

    const v12, 0x8769

    invoke-direct {v5, v10, v12, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x21

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v5, v10, v12, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x22

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "SensorTopBorder"

    invoke-direct {v5, v10, v0, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x23

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "SensorLeftBorder"

    invoke-direct {v5, v10, v14, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x24

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "SensorBottomBorder"

    const/4 v12, 0x6

    invoke-direct {v5, v10, v12, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x25

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "SensorRightBorder"

    const/4 v12, 0x7

    invoke-direct {v5, v10, v12, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x26

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "ISO"

    const/16 v12, 0x17

    invoke-direct {v5, v10, v12, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x27

    aput-object v5, v1, v10

    new-instance v5, Lb/n/a/a$c;

    const-string v10, "JpgFromRaw"

    const/16 v12, 0x2e

    const/4 v0, 0x7

    invoke-direct {v5, v10, v12, v0}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v0, 0x28

    aput-object v5, v1, v0

    sput-object v1, Lb/n/a/a;->m:[Lb/n/a/a$c;

    const/16 v0, 0x3b

    .line 18
    new-array v0, v0, [Lb/n/a/a$c;

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ExposureTime"

    const v10, 0x829a

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "FNumber"

    const v10, 0x829d

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ExposureProgram"

    const v10, 0x8822

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v8

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SpectralSensitivity"

    const v10, 0x8824

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v6

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "PhotographicSensitivity"

    const v10, 0x8827

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "OECF"

    const v10, 0x8828

    const/4 v12, 0x7

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v14

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ExifVersion"

    const v10, 0x9000

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v5, 0x6

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "DateTimeOriginal"

    const v10, 0x9003

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v12

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "DateTimeDigitized"

    const v10, 0x9004

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x8

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ComponentsConfiguration"

    const v10, 0x9101

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x9

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "CompressedBitsPerPixel"

    const v10, 0x9102

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xa

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v10, "ShutterSpeedValue"

    const v12, 0x9201

    invoke-direct {v1, v10, v12, v5}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xb

    aput-object v1, v0, v10

    new-instance v1, Lb/n/a/a$c;

    const-string v10, "ApertureValue"

    const v12, 0x9202

    invoke-direct {v1, v10, v12, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xc

    aput-object v1, v0, v10

    new-instance v1, Lb/n/a/a$c;

    const-string v10, "BrightnessValue"

    const v12, 0x9203

    invoke-direct {v1, v10, v12, v5}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xd

    aput-object v1, v0, v10

    new-instance v1, Lb/n/a/a$c;

    const-string v10, "ExposureBiasValue"

    const v12, 0x9204

    invoke-direct {v1, v10, v12, v5}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xe

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "MaxApertureValue"

    const v10, 0x9205

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xf

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SubjectDistance"

    const v10, 0x9206

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x10

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "MeteringMode"

    const v10, 0x9207

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x11

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "LightSource"

    const v10, 0x9208

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x12

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "Flash"

    const v10, 0x9209

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x13

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "FocalLength"

    const v10, 0x920a

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x14

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SubjectArea"

    const v10, 0x9214

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x15

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "MakerNote"

    const v10, 0x927c

    const/4 v12, 0x7

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x16

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "UserComment"

    const v10, 0x9286

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x17

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SubSecTime"

    const v10, 0x9290

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x18

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SubSecTimeOriginal"

    const v10, 0x9291

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x19

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SubSecTimeDigitized"

    const v10, 0x9292

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1a

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "FlashpixVersion"

    const v10, 0xa000

    const/4 v12, 0x7

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1b

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ColorSpace"

    const v10, 0xa001

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1c

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "PixelXDimension"

    const v10, 0xa002

    const/4 v12, 0x4

    invoke-direct {v1, v5, v10, v6, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v5, 0x1d

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "PixelYDimension"

    const v10, 0xa003

    invoke-direct {v1, v5, v10, v6, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v5, 0x1e

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "RelatedSoundFile"

    const v10, 0xa004

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1f

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "InteroperabilityIFDPointer"

    const v10, 0xa005

    const/4 v12, 0x4

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x20

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "FlashEnergy"

    const v10, 0xa20b

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x21

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SpatialFrequencyResponse"

    const v10, 0xa20c

    const/4 v12, 0x7

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x22

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "FocalPlaneXResolution"

    const v10, 0xa20e

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x23

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "FocalPlaneYResolution"

    const v10, 0xa20f

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x24

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "FocalPlaneResolutionUnit"

    const v10, 0xa210

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x25

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SubjectLocation"

    const v10, 0xa214

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x26

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ExposureIndex"

    const v10, 0xa215

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x27

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SensingMethod"

    const v10, 0xa217

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x28

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "FileSource"

    const v10, 0xa300

    const/4 v12, 0x7

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x29

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SceneType"

    const v10, 0xa301

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2a

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "CFAPattern"

    const v10, 0xa302

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2b

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "CustomRendered"

    const v10, 0xa401

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2c

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ExposureMode"

    const v10, 0xa402

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2d

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "WhiteBalance"

    const v10, 0xa403

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2e

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "DigitalZoomRatio"

    const v10, 0xa404

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2f

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "FocalLengthIn35mmFilm"

    const v10, 0xa405

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x30

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SceneCaptureType"

    const v10, 0xa406

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x31

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GainControl"

    const v10, 0xa407

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x32

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "Contrast"

    const v10, 0xa408

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x33

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "Saturation"

    const v10, 0xa409

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x34

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "Sharpness"

    const v10, 0xa40a

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x35

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "DeviceSettingDescription"

    const v10, 0xa40b

    const/4 v12, 0x7

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x36

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SubjectDistanceRange"

    const v10, 0xa40c

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x37

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ImageUniqueID"

    const v10, 0xa420

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x38

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "DNGVersion"

    const v10, 0xc612

    invoke-direct {v1, v5, v10, v2}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x39

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "DefaultCropSize"

    const v10, 0xc620

    const/4 v12, 0x4

    invoke-direct {v1, v5, v10, v6, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v5, 0x3a

    aput-object v1, v0, v5

    sput-object v0, Lb/n/a/a;->n:[Lb/n/a/a$c;

    const/16 v0, 0x1f

    .line 19
    new-array v0, v0, [Lb/n/a/a$c;

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSVersionID"

    invoke-direct {v1, v5, v4, v2}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSLatitudeRef"

    invoke-direct {v1, v5, v2, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSLatitude"

    invoke-direct {v1, v5, v8, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v8

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSLongitudeRef"

    invoke-direct {v1, v5, v6, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v6

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSLongitude"

    const/4 v10, 0x4

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v10

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSAltitudeRef"

    invoke-direct {v1, v5, v14, v2}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v14

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSAltitude"

    const/4 v10, 0x6

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v10

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSTimeStamp"

    const/4 v10, 0x7

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v10

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSSatellites"

    const/16 v10, 0x8

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v10

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSStatus"

    const/16 v10, 0x9

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v10

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSMeasureMode"

    const/16 v10, 0xa

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v10

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSDOP"

    const/16 v10, 0xb

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v10

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSSpeedRef"

    const/16 v10, 0xc

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v10

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSSpeed"

    const/16 v10, 0xd

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v10

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSTrackRef"

    const/16 v10, 0xe

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v10

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSTrack"

    const/16 v10, 0xf

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xf

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSImgDirectionRef"

    const/16 v10, 0x10

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x10

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSImgDirection"

    const/16 v10, 0x11

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x11

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSMapDatum"

    const/16 v10, 0x12

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x12

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSDestLatitudeRef"

    const/16 v10, 0x13

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x13

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSDestLatitude"

    const/16 v10, 0x14

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x14

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSDestLongitudeRef"

    const/16 v10, 0x15

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x15

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSDestLongitude"

    const/16 v10, 0x16

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x16

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSDestBearingRef"

    const/16 v10, 0x17

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x17

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSDestBearing"

    const/16 v10, 0x18

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x18

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSDestDistanceRef"

    const/16 v10, 0x19

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x19

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSDestDistance"

    const/16 v10, 0x1a

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1a

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSProcessingMethod"

    const/16 v10, 0x1b

    const/4 v12, 0x7

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1b

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSAreaInformation"

    const/16 v10, 0x1c

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1c

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSDateStamp"

    const/16 v10, 0x1d

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1d

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSDifferential"

    const/16 v10, 0x1e

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1e

    aput-object v1, v0, v5

    sput-object v0, Lb/n/a/a;->o:[Lb/n/a/a$c;

    .line 20
    new-array v0, v2, [Lb/n/a/a$c;

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "InteroperabilityIndex"

    invoke-direct {v1, v5, v2, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    sput-object v0, Lb/n/a/a;->p:[Lb/n/a/a$c;

    const/16 v0, 0x25

    .line 21
    new-array v0, v0, [Lb/n/a/a$c;

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "NewSubfileType"

    const/16 v10, 0xfe

    const/4 v12, 0x4

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ThumbnailImageWidth"

    const/16 v10, 0x100

    invoke-direct {v1, v5, v10, v6, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v8

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ThumbnailImageLength"

    const/16 v10, 0x101

    invoke-direct {v1, v5, v10, v6, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v6

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v12

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "Compression"

    const/16 v10, 0x103

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v14

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "PhotometricInterpretation"

    const/16 v10, 0x106

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v5, 0x6

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ImageDescription"

    const/16 v10, 0x10e

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v5, 0x7

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "Make"

    const/16 v10, 0x10f

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x8

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "Model"

    const/16 v10, 0x110

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x9

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "StripOffsets"

    const/16 v10, 0x111

    const/4 v12, 0x4

    invoke-direct {v1, v5, v10, v6, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v5, 0xa

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "Orientation"

    const/16 v10, 0x112

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xb

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SamplesPerPixel"

    const/16 v10, 0x115

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xc

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "RowsPerStrip"

    const/16 v10, 0x116

    const/4 v12, 0x4

    invoke-direct {v1, v5, v10, v6, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v5, 0xd

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "StripByteCounts"

    const/16 v10, 0x117

    invoke-direct {v1, v5, v10, v6, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v5, 0xe

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "XResolution"

    const/16 v10, 0x11a

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xf

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "YResolution"

    const/16 v10, 0x11b

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x10

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "PlanarConfiguration"

    const/16 v10, 0x11c

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x11

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ResolutionUnit"

    const/16 v10, 0x128

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x12

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "TransferFunction"

    const/16 v10, 0x12d

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x13

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "Software"

    const/16 v10, 0x131

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x14

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "DateTime"

    const/16 v10, 0x132

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x15

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "Artist"

    const/16 v10, 0x13b

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x16

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "WhitePoint"

    const/16 v10, 0x13e

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x17

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "PrimaryChromaticities"

    const/16 v10, 0x13f

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x18

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SubIFDPointer"

    const/16 v10, 0x14a

    const/4 v12, 0x4

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x19

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "JPEGInterchangeFormat"

    const/16 v10, 0x201

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1a

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "JPEGInterchangeFormatLength"

    const/16 v10, 0x202

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1b

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "YCbCrCoefficients"

    const/16 v10, 0x211

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1c

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "YCbCrSubSampling"

    const/16 v10, 0x212

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1d

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "YCbCrPositioning"

    const/16 v10, 0x213

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1e

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ReferenceBlackWhite"

    const/16 v10, 0x214

    invoke-direct {v1, v5, v10, v14}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1f

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "Copyright"

    const v10, 0x8298

    invoke-direct {v1, v5, v10, v8}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x20

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ExifIFDPointer"

    const v10, 0x8769

    const/4 v12, 0x4

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x21

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSInfoIFDPointer"

    const v10, 0x8825

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x22

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "DNGVersion"

    const v10, 0xc612

    invoke-direct {v1, v5, v10, v2}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x23

    aput-object v1, v0, v5

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "DefaultCropSize"

    const v10, 0xc620

    const/4 v12, 0x4

    invoke-direct {v1, v5, v10, v6, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v5, 0x24

    aput-object v1, v0, v5

    sput-object v0, Lb/n/a/a;->q:[Lb/n/a/a$c;

    .line 22
    new-instance v0, Lb/n/a/a$c;

    const-string v1, "StripOffsets"

    const/16 v5, 0x111

    invoke-direct {v0, v1, v5, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/n/a/a;->r:Lb/n/a/a$c;

    .line 23
    new-array v0, v6, [Lb/n/a/a$c;

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ThumbnailImage"

    const/16 v10, 0x100

    const/4 v12, 0x7

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "CameraSettingsIFDPointer"

    const/16 v10, 0x2020

    const/4 v12, 0x4

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ImageProcessingIFDPointer"

    const/16 v10, 0x2040

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v8

    sput-object v0, Lb/n/a/a;->s:[Lb/n/a/a$c;

    .line 24
    new-array v0, v8, [Lb/n/a/a$c;

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "PreviewImageStart"

    const/16 v10, 0x101

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "PreviewImageLength"

    const/16 v10, 0x102

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    sput-object v0, Lb/n/a/a;->t:[Lb/n/a/a$c;

    .line 25
    new-array v0, v2, [Lb/n/a/a$c;

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "AspectFrame"

    const/16 v10, 0x1113

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    sput-object v0, Lb/n/a/a;->u:[Lb/n/a/a$c;

    .line 26
    new-array v0, v2, [Lb/n/a/a$c;

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ColorSpace"

    const/16 v10, 0x37

    invoke-direct {v1, v5, v10, v6}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    sput-object v0, Lb/n/a/a;->v:[Lb/n/a/a$c;

    const/16 v0, 0xa

    .line 27
    new-array v0, v0, [[Lb/n/a/a$c;

    sget-object v1, Lb/n/a/a;->m:[Lb/n/a/a$c;

    aput-object v1, v0, v4

    sget-object v5, Lb/n/a/a;->n:[Lb/n/a/a$c;

    aput-object v5, v0, v2

    sget-object v5, Lb/n/a/a;->o:[Lb/n/a/a$c;

    aput-object v5, v0, v8

    sget-object v5, Lb/n/a/a;->p:[Lb/n/a/a$c;

    aput-object v5, v0, v6

    sget-object v5, Lb/n/a/a;->q:[Lb/n/a/a$c;

    const/4 v10, 0x4

    aput-object v5, v0, v10

    aput-object v1, v0, v14

    sget-object v1, Lb/n/a/a;->s:[Lb/n/a/a$c;

    const/4 v5, 0x6

    aput-object v1, v0, v5

    sget-object v1, Lb/n/a/a;->t:[Lb/n/a/a$c;

    const/4 v10, 0x7

    aput-object v1, v0, v10

    sget-object v1, Lb/n/a/a;->u:[Lb/n/a/a$c;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lb/n/a/a;->v:[Lb/n/a/a$c;

    const/16 v10, 0x9

    aput-object v1, v0, v10

    sput-object v0, Lb/n/a/a;->w:[[Lb/n/a/a$c;

    .line 28
    new-array v0, v5, [Lb/n/a/a$c;

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "SubIFDPointer"

    const/16 v10, 0x14a

    const/4 v12, 0x4

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ExifIFDPointer"

    const v10, 0x8769

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "GPSInfoIFDPointer"

    const v10, 0x8825

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v8

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "InteroperabilityIFDPointer"

    const v10, 0xa005

    invoke-direct {v1, v5, v10, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v6

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "CameraSettingsIFDPointer"

    const/16 v10, 0x2020

    invoke-direct {v1, v5, v10, v2}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v12

    new-instance v1, Lb/n/a/a$c;

    const-string v5, "ImageProcessingIFDPointer"

    const/16 v10, 0x2040

    invoke-direct {v1, v5, v10, v2}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v14

    sput-object v0, Lb/n/a/a;->x:[Lb/n/a/a$c;

    .line 29
    new-instance v0, Lb/n/a/a$c;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v5, 0x201

    invoke-direct {v0, v1, v5, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/n/a/a;->y:Lb/n/a/a$c;

    .line 30
    new-instance v0, Lb/n/a/a$c;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v5, 0x202

    invoke-direct {v0, v1, v5, v12}, Lb/n/a/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/n/a/a;->z:Lb/n/a/a$c;

    .line 31
    sget-object v0, Lb/n/a/a;->w:[[Lb/n/a/a$c;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    sput-object v1, Lb/n/a/a;->A:[Ljava/util/HashMap;

    .line 32
    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Lb/n/a/a;->B:[Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v14, [Ljava/lang/String;

    const-string v5, "FNumber"

    aput-object v5, v1, v4

    const-string v5, "DigitalZoomRatio"

    aput-object v5, v1, v2

    const-string v5, "ExposureTime"

    aput-object v5, v1, v8

    const-string v5, "SubjectDistance"

    aput-object v5, v1, v6

    const-string v5, "GPSTimeStamp"

    const/4 v10, 0x4

    aput-object v5, v1, v10

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lb/n/a/a;->C:Ljava/util/HashSet;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/n/a/a;->D:Ljava/util/HashMap;

    const-string v0, "US-ASCII"

    .line 35
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lb/n/a/a;->E:Ljava/nio/charset/Charset;

    .line 36
    sget-object v0, Lb/n/a/a;->E:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lb/n/a/a;->F:[B

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/n/a/a;->i:Ljava/text/SimpleDateFormat;

    .line 38
    sget-object v0, Lb/n/a/a;->i:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    .line 39
    :goto_0
    sget-object v1, Lb/n/a/a;->w:[[Lb/n/a/a$c;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 40
    sget-object v1, Lb/n/a/a;->A:[Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    aput-object v5, v1, v0

    .line 41
    sget-object v1, Lb/n/a/a;->B:[Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    aput-object v5, v1, v0

    .line 42
    sget-object v1, Lb/n/a/a;->w:[[Lb/n/a/a$c;

    aget-object v1, v1, v0

    array-length v5, v1

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_0

    aget-object v12, v1, v10

    .line 43
    sget-object v16, Lb/n/a/a;->A:[Ljava/util/HashMap;

    aget-object v14, v16, v0

    iget v6, v12, Lb/n/a/a$c;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v6, Lb/n/a/a;->B:[Ljava/util/HashMap;

    aget-object v6, v6, v0

    iget-object v14, v12, Lb/n/a/a$c;->b:Ljava/lang/String;

    invoke-virtual {v6, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x3

    const/4 v14, 0x5

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x3

    const/4 v14, 0x5

    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lb/n/a/a;->D:Ljava/util/HashMap;

    sget-object v1, Lb/n/a/a;->x:[Lb/n/a/a$c;

    aget-object v1, v1, v4

    iget v1, v1, Lb/n/a/a$c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lb/n/a/a;->D:Ljava/util/HashMap;

    sget-object v1, Lb/n/a/a;->x:[Lb/n/a/a$c;

    aget-object v1, v1, v2

    iget v1, v1, Lb/n/a/a$c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lb/n/a/a;->D:Ljava/util/HashMap;

    sget-object v1, Lb/n/a/a;->x:[Lb/n/a/a$c;

    aget-object v1, v1, v8

    iget v1, v1, Lb/n/a/a$c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lb/n/a/a;->D:Ljava/util/HashMap;

    sget-object v1, Lb/n/a/a;->x:[Lb/n/a/a$c;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget v1, v1, Lb/n/a/a$c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lb/n/a/a;->D:Ljava/util/HashMap;

    sget-object v1, Lb/n/a/a;->x:[Lb/n/a/a$c;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget v1, v1, Lb/n/a/a$c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lb/n/a/a;->D:Ljava/util/HashMap;

    sget-object v1, Lb/n/a/a;->x:[Lb/n/a/a$c;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v1, v1, Lb/n/a/a$c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb/n/a/a;->G:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb/n/a/a;->H:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_4
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_5
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lb/n/a/a;->w:[[Lb/n/a/a$c;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lb/n/a/a;->M:Ljava/util/Set;

    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lb/n/a/a;->J:Landroid/content/res/AssetManager$AssetInputStream;

    .line 6
    iput-object p1, p0, Lb/n/a/a;->I:Ljava/lang/String;

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {p0, v1}, Lb/n/a/a;->a(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {v1}, Lb/n/a/a;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lb/n/a/a;->a(Ljava/io/Closeable;)V

    throw p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 193
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 194
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static a([B)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    :goto_0
    sget-object v2, Lb/n/a/a;->f:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 42
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/Object;)[J
    .locals 4

    .line 195
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 196
    check-cast p0, [I

    .line 197
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 198
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 199
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 200
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 201
    check-cast p0, [J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/io/BufferedInputStream;)I
    .locals 1

    const/16 v0, 0x1388

    .line 33
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 34
    new-array v0, v0, [B

    .line 35
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 36
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 37
    invoke-static {v0}, Lb/n/a/a;->a([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    .line 38
    :cond_0
    invoke-virtual {p0, v0}, Lb/n/a/a;->c([B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    return p1

    .line 39
    :cond_1
    invoke-virtual {p0, v0}, Lb/n/a/a;->b([B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    return p1

    .line 40
    :cond_2
    invoke-virtual {p0, v0}, Lb/n/a/a;->d([B)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0xa

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    .line 16
    invoke-virtual {p0, p1}, Lb/n/a/a;->b(Ljava/lang/String;)Lb/n/a/a$b;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 17
    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lb/n/a/a;->b(Ljava/lang/String;)Lb/n/a/a$b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    sget-object v2, Lb/n/a/a;->C:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lb/n/a/a$b;->c(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget p1, v0, Lb/n/a/a$b;->a:I

    const/4 v2, 0x5

    const-string v3, "ExifInterface"

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS Timestamp format is not rational. format="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lb/n/a/a$b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 7
    :cond_1
    iget-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lb/n/a/a$b;->d(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lb/n/a/a$d;

    if-eqz p1, :cond_3

    .line 8
    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    iget-wide v2, v2, Lb/n/a/a$d;->a:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Lb/n/a/a$d;->b:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    iget-wide v2, v2, Lb/n/a/a$d;->a:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Lb/n/a/a$d;->b:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-object v2, p1, v1

    iget-wide v2, v2, Lb/n/a/a$d;->a:J

    long-to-float v2, v2

    aget-object p1, p1, v1

    iget-wide v3, p1, Lb/n/a/a$d;->b:J

    long-to-float p1, v3

    div-float/2addr v2, p1

    float-to-int p1, v2

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%02d:%02d:%02d"

    .line 13
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid GPS Timestamp array. array="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 15
    :cond_4
    :try_start_0
    iget-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lb/n/a/a$b;->a(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_5
    return-object v1
.end method

.method public final a()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    .line 121
    invoke-virtual {p0, v0}, Lb/n/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    .line 122
    invoke-virtual {p0, v2}, Lb/n/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 123
    iget-object v3, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 124
    invoke-static {v0}, Lb/n/a/a$b;->a(Ljava/lang/String;)Lb/n/a/a$b;

    move-result-object v0

    .line 125
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    .line 126
    invoke-virtual {p0, v0}, Lb/n/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 127
    iget-object v2, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 128
    invoke-static {v3, v4, v5}, Lb/n/a/a$b;->a(JLjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v5

    .line 129
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    .line 130
    invoke-virtual {p0, v0}, Lb/n/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 131
    iget-object v2, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 132
    invoke-static {v3, v4, v5}, Lb/n/a/a$b;->a(JLjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v5

    .line 133
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    .line 134
    invoke-virtual {p0, v0}, Lb/n/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 135
    iget-object v2, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    iget-object v2, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 136
    invoke-static {v3, v4, v2}, Lb/n/a/a$b;->a(JLjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v2

    .line 137
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    .line 138
    invoke-virtual {p0, v0}, Lb/n/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 139
    iget-object v1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 140
    invoke-static {v3, v4, v2}, Lb/n/a/a$b;->a(JLjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v2

    .line 141
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final a(II)V
    .locals 5

    .line 177
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v1, "ImageLength"

    .line 179
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/n/a/a$b;

    .line 180
    iget-object v2, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v2, v2, p1

    const-string v3, "ImageWidth"

    .line 181
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/n/a/a$b;

    .line 182
    iget-object v4, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    .line 183
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/n/a/a$b;

    .line 184
    iget-object v4, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    .line 185
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/n/a/a$b;

    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 186
    :cond_2
    iget-object v4, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 187
    iget-object v4, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 188
    iget-object v4, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 189
    iget-object v4, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v1, :cond_3

    if-ge v2, v3, :cond_3

    .line 190
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    .line 191
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 192
    aput-object v1, v0, p2

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lb/n/a/a$a;)V
    .locals 6

    .line 81
    invoke-virtual {p0, p1}, Lb/n/a/a;->c(Lb/n/a/a$a;)V

    .line 82
    iget-object p1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 83
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/n/a/a$b;

    if-eqz p1, :cond_6

    .line 84
    new-instance v1, Lb/n/a/a$a;

    iget-object p1, p1, Lb/n/a/a$b;->c:[B

    invoke-direct {v1, p1}, Lb/n/a/a$a;-><init>([B)V

    .line 85
    iget-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lb/n/a/a$a;->a(Ljava/nio/ByteOrder;)V

    .line 86
    sget-object p1, Lb/n/a/a;->g:[B

    array-length p1, p1

    new-array p1, p1, [B

    .line 87
    invoke-virtual {v1, p1}, Lb/n/a/a$a;->readFully([B)V

    const-wide/16 v2, 0x0

    .line 88
    invoke-virtual {v1, v2, v3}, Lb/n/a/a$a;->h(J)V

    .line 89
    sget-object v2, Lb/n/a/a;->h:[B

    array-length v2, v2

    new-array v2, v2, [B

    .line 90
    invoke-virtual {v1, v2}, Lb/n/a/a$a;->readFully([B)V

    .line 91
    sget-object v3, Lb/n/a/a;->g:[B

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x8

    .line 92
    invoke-virtual {v1, v2, v3}, Lb/n/a/a$a;->h(J)V

    goto :goto_0

    .line 93
    :cond_0
    sget-object p1, Lb/n/a/a;->h:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc

    .line 94
    invoke-virtual {v1, v2, v3}, Lb/n/a/a$a;->h(J)V

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 95
    invoke-virtual {p0, v1, p1}, Lb/n/a/a;->b(Lb/n/a/a$a;I)V

    .line 96
    iget-object p1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    .line 97
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/n/a/a$b;

    .line 98
    iget-object v2, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    .line 99
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/n/a/a$b;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 100
    iget-object v2, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object p1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_2
    iget-object p1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    .line 103
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/n/a/a$b;

    if-eqz p1, :cond_6

    .line 104
    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lb/n/a/a$b;->d(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5

    .line 105
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 106
    aget v2, p1, v1

    const/4 v3, 0x0

    aget v4, p1, v3

    if-le v2, v4, :cond_6

    const/4 v2, 0x3

    aget v4, p1, v2

    aget v5, p1, v0

    if-le v4, v5, :cond_6

    .line 107
    aget v1, p1, v1

    aget v4, p1, v3

    sub-int/2addr v1, v4

    add-int/2addr v1, v0

    .line 108
    aget v2, p1, v2

    aget p1, p1, v0

    sub-int/2addr v2, p1

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    add-int/2addr v1, v2

    sub-int v2, v1, v2

    sub-int/2addr v1, v2

    .line 109
    :cond_4
    iget-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 110
    invoke-static {v1, p1}, Lb/n/a/a$b;->a(ILjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 112
    invoke-static {v2, v0}, Lb/n/a/a$b;->a(ILjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object p1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v1, "ImageLength"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 115
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid aspect frame values. frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExifInterface"

    .line 117
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public final a(Lb/n/a/a$a;I)V
    .locals 3

    .line 142
    invoke-virtual {p0, p1}, Lb/n/a/a;->e(Lb/n/a/a$a;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 143
    iget-object v0, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lb/n/a/a$a;->a(Ljava/nio/ByteOrder;)V

    .line 144
    invoke-virtual {p1}, Lb/n/a/a$a;->readUnsignedShort()I

    move-result v0

    .line 145
    iget v1, p0, Lb/n/a/a;->K:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid start code: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lb/n/a/a$a;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    if-ge v0, p2, :cond_4

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_3

    .line 148
    invoke-virtual {p1, v0}, Lb/n/a/a$a;->skipBytes(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 149
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t jump to first Ifd: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 150
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid first Ifd offset: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/n/a/a$a;II)V
    .locals 9

    .line 43
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lb/n/a/a$a;->a(Ljava/nio/ByteOrder;)V

    int-to-long v0, p2

    .line 44
    invoke-virtual {p1, v0, v1}, Lb/n/a/a$a;->h(J)V

    .line 45
    invoke-virtual {p1}, Lb/n/a/a$a;->readByte()B

    move-result v0

    const-string v1, "Invalid marker: "

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    const/4 v3, 0x1

    add-int/2addr p2, v3

    .line 46
    invoke-virtual {p1}, Lb/n/a/a$a;->readByte()B

    move-result v4

    const/16 v5, -0x28

    if-ne v4, v5, :cond_10

    add-int/2addr p2, v3

    .line 47
    :goto_0
    invoke-virtual {p1}, Lb/n/a/a$a;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_f

    add-int/2addr p2, v3

    .line 48
    invoke-virtual {p1}, Lb/n/a/a$a;->readByte()B

    move-result v0

    add-int/2addr p2, v3

    const/16 v1, -0x27

    if-eq v0, v1, :cond_e

    const/16 v1, -0x26

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 49
    :cond_0
    invoke-virtual {p1}, Lb/n/a/a$a;->readUnsignedShort()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 p2, p2, 0x2

    const-string v4, "Invalid length"

    if-ltz v1, :cond_d

    const/16 v5, -0x1f

    const/4 v6, 0x0

    const-string v7, "Invalid exif"

    if-eq v0, v5, :cond_5

    const/4 v5, -0x2

    if-eq v0, v5, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_2

    .line 50
    :pswitch_0
    invoke-virtual {p1, v3}, Lb/n/a/a$a;->skipBytes(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 51
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    .line 52
    invoke-virtual {p1}, Lb/n/a/a$a;->readUnsignedShort()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 53
    invoke-static {v5, v6, v7}, Lb/n/a/a$b;->a(JLjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v5

    const-string v6, "ImageLength"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    .line 55
    invoke-virtual {p1}, Lb/n/a/a$a;->readUnsignedShort()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 56
    invoke-static {v5, v6, v7}, Lb/n/a/a$b;->a(JLjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v5

    const-string v6, "ImageWidth"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x5

    goto :goto_2

    .line 57
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid SOFx"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_2
    new-array v0, v1, [B

    .line 59
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v1, :cond_4

    const-string v1, "UserComment"

    .line 60
    invoke-virtual {p0, v1}, Lb/n/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 61
    iget-object v5, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v5, v5, v3

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lb/n/a/a;->E:Ljava/nio/charset/Charset;

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v7}, Lb/n/a/a$b;->a(Ljava/lang/String;)Lb/n/a/a$b;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    .line 62
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v0, 0x6

    if-ge v1, v0, :cond_6

    goto :goto_2

    .line 63
    :cond_6
    new-array v5, v0, [B

    .line 64
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ne v8, v0, :cond_c

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v1, v1, -0x6

    .line 65
    sget-object v0, Lb/n/a/a;->F:[B

    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    if-lez v1, :cond_b

    .line 66
    iput p2, p0, Lb/n/a/a;->T:I

    .line 67
    new-array v0, v1, [B

    .line 68
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v1, :cond_a

    add-int/2addr p2, v1

    .line 69
    invoke-virtual {p0, v0, p3}, Lb/n/a/a;->a([BI)V

    goto :goto_1

    :goto_2
    if-ltz v1, :cond_9

    .line 70
    invoke-virtual {p1, v1}, Lb/n/a/a$a;->skipBytes(I)I

    move-result v0

    if-ne v0, v1, :cond_8

    add-int/2addr p2, v1

    goto/16 :goto_0

    .line 71
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid JPEG segment"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_a
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_b
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_c
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_d
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_e
    :goto_3
    iget-object p2, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Lb/n/a/a$a;->a(Ljava/nio/ByteOrder;)V

    return-void

    .line 78
    :cond_f
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid marker:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_10
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_11
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lb/n/a/a$a;Ljava/util/HashMap;)V
    .locals 3

    const-string v0, "JPEGInterchangeFormat"

    .line 151
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/n/a/a$b;

    const-string v1, "JPEGInterchangeFormatLength"

    .line 152
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/n/a/a$b;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 153
    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 154
    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 155
    invoke-virtual {p1}, Lb/n/a/a$a;->available()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 156
    iget v1, p0, Lb/n/a/a;->K:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 157
    iget v1, p0, Lb/n/a/a;->U:I

    goto :goto_1

    .line 158
    :cond_1
    :goto_0
    iget v1, p0, Lb/n/a/a;->T:I

    :goto_1
    add-int/2addr v0, v1

    :cond_2
    if-lez v0, :cond_3

    if-lez p2, :cond_3

    const/4 v1, 0x1

    .line 159
    iput-boolean v1, p0, Lb/n/a/a;->O:Z

    .line 160
    iput v0, p0, Lb/n/a/a;->P:I

    .line 161
    iput p2, p0, Lb/n/a/a;->Q:I

    .line 162
    iget-object v1, p0, Lb/n/a/a;->I:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lb/n/a/a;->J:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v1, :cond_3

    .line 163
    new-array p2, p2, [B

    int-to-long v0, v0

    .line 164
    invoke-virtual {p1, v0, v1}, Lb/n/a/a$a;->h(J)V

    .line 165
    invoke-virtual {p1, p2}, Lb/n/a/a$a;->readFully([B)V

    .line 166
    iput-object p2, p0, Lb/n/a/a;->R:[B

    :cond_3
    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    :goto_0
    :try_start_0
    sget-object v2, Lb/n/a/a;->w:[[Lb/n/a/a$c;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 19
    iget-object v2, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 21
    invoke-virtual {p0, v1}, Lb/n/a/a;->a(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Lb/n/a/a;->K:I

    .line 22
    new-instance p1, Lb/n/a/a$a;

    invoke-direct {p1, v1}, Lb/n/a/a$a;-><init>(Ljava/io/InputStream;)V

    .line 23
    iget v1, p0, Lb/n/a/a;->K:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 24
    :pswitch_0
    invoke-virtual {p0, p1}, Lb/n/a/a;->d(Lb/n/a/a$a;)V

    goto :goto_1

    .line 25
    :pswitch_1
    invoke-virtual {p0, p1}, Lb/n/a/a;->b(Lb/n/a/a$a;)V

    goto :goto_1

    .line 26
    :pswitch_2
    invoke-virtual {p0, p1}, Lb/n/a/a;->a(Lb/n/a/a$a;)V

    goto :goto_1

    .line 27
    :pswitch_3
    invoke-virtual {p0, p1, v0, v0}, Lb/n/a/a;->a(Lb/n/a/a$a;II)V

    goto :goto_1

    .line 28
    :pswitch_4
    invoke-virtual {p0, p1}, Lb/n/a/a;->c(Lb/n/a/a$a;)V

    .line 29
    :goto_1
    invoke-virtual {p0, p1}, Lb/n/a/a;->f(Lb/n/a/a$a;)V

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lb/n/a/a;->Y:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 31
    :catch_0
    :try_start_1
    iput-boolean v0, p0, Lb/n/a/a;->Y:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_2
    invoke-virtual {p0}, Lb/n/a/a;->a()V

    return-void

    :goto_3
    invoke-virtual {p0}, Lb/n/a/a;->a()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final a([BI)V
    .locals 1

    .line 118
    new-instance v0, Lb/n/a/a$a;

    invoke-direct {v0, p1}, Lb/n/a/a$a;-><init>([B)V

    .line 119
    array-length p1, p1

    invoke-virtual {p0, v0, p1}, Lb/n/a/a;->a(Lb/n/a/a$a;I)V

    .line 120
    invoke-virtual {p0, v0, p2}, Lb/n/a/a;->b(Lb/n/a/a$a;I)V

    return-void
.end method

.method public final a(Ljava/util/HashMap;)Z
    .locals 4

    const-string v0, "BitsPerSample"

    .line 167
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/n/a/a$b;

    if-eqz v0, :cond_3

    .line 168
    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lb/n/a/a$b;->d(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 169
    sget-object v1, Lb/n/a/a;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 170
    :cond_0
    iget v1, p0, Lb/n/a/a;->K:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    const-string v1, "PhotometricInterpretation"

    .line 171
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/n/a/a$b;

    if-eqz p1, :cond_3

    .line 172
    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 173
    invoke-virtual {p1, v1}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 174
    sget-object v1, Lb/n/a/a;->e:[I

    .line 175
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    sget-object p1, Lb/n/a/a;->c:[I

    .line 176
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;)Lb/n/a/a$b;
    .locals 2

    const-string v0, "ISOSpeedRatings"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PhotographicSensitivity"

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lb/n/a/a;->w:[[Lb/n/a/a$c;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/n/a/a$b;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lb/n/a/a$a;)V
    .locals 6

    const/16 v0, 0x54

    .line 9
    invoke-virtual {p1, v0}, Lb/n/a/a$a;->skipBytes(I)I

    const/4 v0, 0x4

    .line 10
    new-array v1, v0, [B

    .line 11
    new-array v2, v0, [B

    .line 12
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 13
    invoke-virtual {p1, v0}, Lb/n/a/a$a;->skipBytes(I)I

    .line 14
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 15
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 16
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x5

    .line 17
    invoke-virtual {p0, p1, v0, v2}, Lb/n/a/a;->a(Lb/n/a/a$a;II)V

    int-to-long v0, v1

    .line 18
    invoke-virtual {p1, v0, v1}, Lb/n/a/a$a;->h(J)V

    .line 19
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lb/n/a/a$a;->a(Ljava/nio/ByteOrder;)V

    .line 20
    invoke-virtual {p1}, Lb/n/a/a$a;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 21
    invoke-virtual {p1}, Lb/n/a/a$a;->readUnsignedShort()I

    move-result v3

    .line 22
    invoke-virtual {p1}, Lb/n/a/a$a;->readUnsignedShort()I

    move-result v4

    .line 23
    sget-object v5, Lb/n/a/a;->r:Lb/n/a/a$c;

    iget v5, v5, Lb/n/a/a$c;->a:I

    if-ne v3, v5, :cond_0

    .line 24
    invoke-virtual {p1}, Lb/n/a/a$a;->readShort()S

    move-result v0

    .line 25
    invoke-virtual {p1}, Lb/n/a/a$a;->readShort()S

    move-result p1

    .line 26
    iget-object v2, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 27
    invoke-static {v0, v2}, Lb/n/a/a$b;->a(ILjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v0

    .line 28
    iget-object v2, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 29
    invoke-static {p1, v2}, Lb/n/a/a$b;->a(ILjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object p1

    .line 30
    iget-object v2, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v1, "ImageWidth"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 32
    :cond_0
    invoke-virtual {p1, v4}, Lb/n/a/a$a;->skipBytes(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lb/n/a/a$a;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 33
    iget-object v3, v0, Lb/n/a/a;->M:Ljava/util/Set;

    iget v4, v1, Lb/n/a/a$a;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    iget v3, v1, Lb/n/a/a$a;->f:I

    add-int/lit8 v3, v3, 0x2

    iget v4, v1, Lb/n/a/a$a;->e:I

    if-le v3, v4, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lb/n/a/a$a;->readShort()S

    move-result v3

    .line 36
    iget v4, v1, Lb/n/a/a$a;->f:I

    mul-int/lit8 v5, v3, 0xc

    add-int/2addr v4, v5

    iget v5, v1, Lb/n/a/a$a;->e:I

    if-gt v4, v5, :cond_21

    if-gtz v3, :cond_1

    goto/16 :goto_e

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const-string v9, "ExifInterface"

    if-ge v5, v3, :cond_1d

    .line 37
    invoke-virtual/range {p1 .. p1}, Lb/n/a/a$a;->readUnsignedShort()I

    move-result v10

    .line 38
    invoke-virtual/range {p1 .. p1}, Lb/n/a/a$a;->readUnsignedShort()I

    move-result v11

    .line 39
    invoke-virtual/range {p1 .. p1}, Lb/n/a/a$a;->readInt()I

    move-result v12

    .line 40
    invoke-virtual/range {p1 .. p1}, Lb/n/a/a$a;->s()I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, 0x4

    add-long/2addr v13, v15

    .line 41
    sget-object v17, Lb/n/a/a;->A:[Ljava/util/HashMap;

    aget-object v4, v17, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/n/a/a$c;

    const/4 v8, 0x7

    if-nez v4, :cond_2

    .line 42
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    if-lez v11, :cond_8

    .line 43
    sget-object v6, Lb/n/a/a;->k:[I

    array-length v6, v6

    if-lt v11, v6, :cond_3

    goto :goto_2

    .line 44
    :cond_3
    invoke-virtual {v4, v11}, Lb/n/a/a$c;->a(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip the tag entry since data format ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lb/n/a/a;->j:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") is unexpected for tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lb/n/a/a$c;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    if-ne v11, v8, :cond_5

    .line 46
    iget v11, v4, Lb/n/a/a$c;->c:I

    :cond_5
    int-to-long v6, v12

    .line 47
    sget-object v15, Lb/n/a/a;->k:[I

    aget v15, v15, v11

    move-object/from16 v16, v9

    int-to-long v8, v15

    mul-long v6, v6, v8

    const-wide/16 v8, 0x0

    cmp-long v15, v6, v8

    if-ltz v15, :cond_7

    const-wide/32 v8, 0x7fffffff

    cmp-long v15, v6, v8

    if-lez v15, :cond_6

    goto :goto_1

    :cond_6
    const/4 v8, 0x1

    move-object/from16 v9, v16

    goto :goto_5

    .line 48
    :cond_7
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v16

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 49
    :cond_8
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-wide/16 v6, 0x0

    :goto_4
    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_9

    .line 50
    invoke-virtual {v1, v13, v14}, Lb/n/a/a$a;->h(J)V

    move/from16 v16, v3

    move/from16 v18, v5

    goto/16 :goto_d

    :cond_9
    const-string v8, "Compression"

    const-wide/16 v15, 0x4

    cmp-long v18, v6, v15

    if-lez v18, :cond_f

    .line 51
    invoke-virtual/range {p1 .. p1}, Lb/n/a/a$a;->readInt()I

    move-result v15

    move/from16 v16, v3

    .line 52
    iget v3, v0, Lb/n/a/a;->K:I

    move/from16 v18, v5

    const/4 v5, 0x7

    if-ne v3, v5, :cond_c

    .line 53
    iget-object v3, v4, Lb/n/a/a$c;->b:Ljava/lang/String;

    const-string v5, "MakerNote"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 54
    iput v15, v0, Lb/n/a/a;->U:I

    goto :goto_6

    :cond_a
    const/4 v3, 0x6

    if-ne v2, v3, :cond_b

    .line 55
    iget-object v5, v4, Lb/n/a/a$c;->b:Ljava/lang/String;

    const-string v3, "ThumbnailImage"

    .line 56
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 57
    iput v15, v0, Lb/n/a/a;->V:I

    .line 58
    iput v12, v0, Lb/n/a/a;->W:I

    .line 59
    iget-object v3, v0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    const/4 v5, 0x6

    .line 60
    invoke-static {v5, v3}, Lb/n/a/a$b;->a(ILjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v3

    .line 61
    iget v5, v0, Lb/n/a/a;->V:I

    move/from16 v20, v11

    move/from16 v19, v12

    int-to-long v11, v5

    iget-object v5, v0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 62
    invoke-static {v11, v12, v5}, Lb/n/a/a$b;->a(JLjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v5

    .line 63
    iget v11, v0, Lb/n/a/a;->W:I

    int-to-long v11, v11

    iget-object v2, v0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 64
    invoke-static {v11, v12, v2}, Lb/n/a/a$b;->a(JLjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v2

    .line 65
    iget-object v11, v0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    const/4 v12, 0x4

    aget-object v11, v11, v12

    invoke-virtual {v11, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v3, v0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v3, v3, v12

    const-string v11, "JPEGInterchangeFormat"

    invoke-virtual {v3, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v3, v0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v3, v3, v12

    const-string v5, "JPEGInterchangeFormatLength"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    :goto_6
    move/from16 v20, v11

    move/from16 v19, v12

    goto :goto_7

    :cond_c
    move/from16 v20, v11

    move/from16 v19, v12

    const/16 v2, 0xa

    if-ne v3, v2, :cond_d

    .line 68
    iget-object v2, v4, Lb/n/a/a$c;->b:Ljava/lang/String;

    const-string v3, "JpgFromRaw"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 69
    iput v15, v0, Lb/n/a/a;->X:I

    :cond_d
    :goto_7
    int-to-long v2, v15

    add-long v11, v2, v6

    .line 70
    iget v5, v1, Lb/n/a/a$a;->e:I

    move-object/from16 v21, v4

    int-to-long v4, v5

    cmp-long v22, v11, v4

    if-gtz v22, :cond_e

    .line 71
    invoke-virtual {v1, v2, v3}, Lb/n/a/a$a;->h(J)V

    goto :goto_8

    .line 72
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v1, v13, v14}, Lb/n/a/a$a;->h(J)V

    goto/16 :goto_d

    :cond_f
    move/from16 v16, v3

    move-object/from16 v21, v4

    move/from16 v18, v5

    move/from16 v20, v11

    move/from16 v19, v12

    .line 74
    :goto_8
    sget-object v2, Lb/n/a/a;->D:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/16 v3, 0x8

    const/4 v4, 0x3

    if-eqz v2, :cond_16

    const-wide/16 v5, -0x1

    move/from16 v11, v20

    if-eq v11, v4, :cond_13

    const/4 v4, 0x4

    if-eq v11, v4, :cond_12

    if-eq v11, v3, :cond_11

    const/16 v3, 0x9

    if-eq v11, v3, :cond_10

    const/16 v3, 0xd

    if-eq v11, v3, :cond_10

    :goto_9
    const-wide/16 v3, 0x0

    goto :goto_b

    .line 75
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lb/n/a/a$a;->readInt()I

    move-result v3

    goto :goto_a

    .line 76
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lb/n/a/a$a;->readShort()S

    move-result v3

    goto :goto_a

    .line 77
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lb/n/a/a$a;->t()J

    move-result-wide v5

    goto :goto_9

    .line 78
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lb/n/a/a$a;->readUnsignedShort()I

    move-result v3

    :goto_a
    int-to-long v5, v3

    goto :goto_9

    :goto_b
    cmp-long v7, v5, v3

    if-lez v7, :cond_15

    .line 79
    iget v3, v1, Lb/n/a/a$a;->e:I

    int-to-long v3, v3

    cmp-long v7, v5, v3

    if-gez v7, :cond_15

    .line 80
    iget-object v3, v0, Lb/n/a/a;->M:Ljava/util/Set;

    long-to-int v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 81
    invoke-virtual {v1, v5, v6}, Lb/n/a/a$a;->h(J)V

    .line 82
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lb/n/a/a;->b(Lb/n/a/a$a;I)V

    goto :goto_c

    .line 83
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 84
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_c
    invoke-virtual {v1, v13, v14}, Lb/n/a/a$a;->h(J)V

    goto :goto_d

    :cond_16
    move/from16 v11, v20

    long-to-int v2, v6

    .line 86
    new-array v2, v2, [B

    .line 87
    invoke-virtual {v1, v2}, Lb/n/a/a$a;->readFully([B)V

    .line 88
    new-instance v5, Lb/n/a/a$b;

    move/from16 v6, v19

    invoke-direct {v5, v11, v6, v2}, Lb/n/a/a$b;-><init>(II[B)V

    .line 89
    iget-object v2, v0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    move-object/from16 v6, v21

    iget-object v7, v6, Lb/n/a/a$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v2, v6, Lb/n/a/a$c;->b:Ljava/lang/String;

    const-string v7, "DNGVersion"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 91
    iput v4, v0, Lb/n/a/a;->K:I

    .line 92
    :cond_17
    iget-object v2, v6, Lb/n/a/a$c;->b:Ljava/lang/String;

    const-string v4, "Make"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, v6, Lb/n/a/a$c;->b:Ljava/lang/String;

    const-string v4, "Model"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    iget-object v2, v0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 93
    invoke-virtual {v5, v2}, Lb/n/a/a$b;->c(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PENTAX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_19
    iget-object v2, v6, Lb/n/a/a$c;->b:Ljava/lang/String;

    .line 94
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 95
    invoke-virtual {v5, v2}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v2

    const v4, 0xffff

    if-ne v2, v4, :cond_1b

    .line 96
    :cond_1a
    iput v3, v0, Lb/n/a/a;->K:I

    .line 97
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lb/n/a/a$a;->s()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v13

    if-eqz v4, :cond_1c

    .line 98
    invoke-virtual {v1, v13, v14}, Lb/n/a/a$a;->h(J)V

    :cond_1c
    :goto_d
    add-int/lit8 v5, v18, 0x1

    int-to-short v5, v5

    move/from16 v2, p2

    move/from16 v3, v16

    goto/16 :goto_0

    .line 99
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lb/n/a/a$a;->s()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    iget v3, v1, Lb/n/a/a$a;->e:I

    if-gt v2, v3, :cond_21

    .line 100
    invoke-virtual/range {p1 .. p1}, Lb/n/a/a$a;->readInt()I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_20

    .line 101
    iget v5, v1, Lb/n/a/a$a;->e:I

    if-ge v2, v5, :cond_20

    .line 102
    iget-object v5, v0, Lb/n/a/a;->M:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 103
    invoke-virtual {v1, v3, v4}, Lb/n/a/a$a;->h(J)V

    .line 104
    iget-object v2, v0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 105
    invoke-virtual {v0, v1, v3}, Lb/n/a/a;->b(Lb/n/a/a$a;I)V

    goto :goto_e

    .line 106
    :cond_1e
    iget-object v2, v0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 107
    invoke-virtual {v0, v1, v3}, Lb/n/a/a;->b(Lb/n/a/a$a;I)V

    goto :goto_e

    .line 108
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 109
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_e
    return-void
.end method

.method public final b(Lb/n/a/a$a;Ljava/util/HashMap;)V
    .locals 11

    const-string v0, "StripOffsets"

    .line 110
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/n/a/a$b;

    const-string v1, "StripByteCounts"

    .line 111
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/n/a/a$b;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 112
    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 113
    invoke-virtual {v0, v1}, Lb/n/a/a$b;->d(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lb/n/a/a;->a(Ljava/lang/Object;)[J

    move-result-object v0

    .line 114
    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 115
    invoke-virtual {p2, v1}, Lb/n/a/a$b;->d(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lb/n/a/a;->a(Ljava/lang/Object;)[J

    move-result-object p2

    const-string v1, "ExifInterface"

    if-nez v0, :cond_0

    const-string p1, "stripOffsets should not be null."

    .line 116
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "stripByteCounts should not be null."

    .line 117
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    .line 118
    array-length v4, p2

    const/4 v5, 0x0

    move-wide v6, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-wide v8, p2, v2

    add-long/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    long-to-int v2, v6

    .line 119
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 120
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 121
    aget-wide v7, v0, v3

    long-to-int v8, v7

    .line 122
    aget-wide v9, p2, v3

    long-to-int v7, v9

    sub-int/2addr v8, v4

    if-gez v8, :cond_3

    const-string v9, "Invalid strip offset value"

    .line 123
    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    int-to-long v9, v8

    .line 124
    invoke-virtual {p1, v9, v10}, Lb/n/a/a$a;->h(J)V

    add-int/2addr v4, v8

    .line 125
    new-array v8, v7, [B

    .line 126
    invoke-virtual {p1, v8}, Ljava/io/InputStream;->read([B)I

    add-int/2addr v4, v7

    .line 127
    array-length v7, v8

    invoke-static {v8, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    array-length v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lb/n/a/a;->O:Z

    .line 130
    iput-object v2, p0, Lb/n/a/a;->R:[B

    .line 131
    array-length p1, v2

    iput p1, p0, Lb/n/a/a;->Q:I

    :cond_5
    return-void
.end method

.method public final b(Ljava/io/InputStream;)V
    .locals 6

    const/4 p1, 0x0

    const/4 v0, 0x5

    .line 136
    invoke-virtual {p0, p1, v0}, Lb/n/a/a;->a(II)V

    const/4 v1, 0x4

    .line 137
    invoke-virtual {p0, p1, v1}, Lb/n/a/a;->a(II)V

    .line 138
    invoke-virtual {p0, v0, v1}, Lb/n/a/a;->a(II)V

    .line 139
    iget-object v2, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v4, "PixelXDimension"

    .line 140
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/n/a/a$b;

    .line 141
    iget-object v4, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "PixelYDimension"

    .line 142
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/n/a/a$b;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 143
    iget-object v4, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v4, v4, p1

    const-string v5, "ImageWidth"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v2, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object p1, v2, p1

    const-string v2, "ImageLength"

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    iget-object p1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    iget-object p1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lb/n/a/a;->b(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    iget-object p1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v2, p1, v0

    aput-object v2, p1, v1

    .line 148
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, p1, v0

    .line 149
    :cond_1
    iget-object p1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lb/n/a/a;->b(Ljava/util/HashMap;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ExifInterface"

    const-string v0, "No image meets the size requirements of a thumbnail image."

    .line 150
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final b(Ljava/util/HashMap;)Z
    .locals 2

    const-string v0, "ImageLength"

    .line 132
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/n/a/a$b;

    const-string v1, "ImageWidth"

    .line 133
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/n/a/a$b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 134
    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 135
    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b([B)Z
    .locals 1

    .line 4
    new-instance v0, Lb/n/a/a$a;

    invoke-direct {v0, p1}, Lb/n/a/a$a;-><init>([B)V

    .line 5
    invoke-virtual {p0, v0}, Lb/n/a/a;->e(Lb/n/a/a$a;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 6
    iget-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lb/n/a/a$a;->a(Ljava/nio/ByteOrder;)V

    .line 7
    invoke-virtual {v0}, Lb/n/a/a$a;->readShort()S

    move-result p1

    .line 8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/16 v0, 0x4f52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5352

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final c(Lb/n/a/a$a;)V
    .locals 4

    .line 4
    invoke-virtual {p1}, Lb/n/a/a$a;->available()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lb/n/a/a;->a(Lb/n/a/a$a;I)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lb/n/a/a;->b(Lb/n/a/a$a;I)V

    .line 6
    invoke-virtual {p0, p1, v0}, Lb/n/a/a;->d(Lb/n/a/a$a;I)V

    const/4 v0, 0x5

    .line 7
    invoke-virtual {p0, p1, v0}, Lb/n/a/a;->d(Lb/n/a/a$a;I)V

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0, p1, v0}, Lb/n/a/a;->d(Lb/n/a/a$a;I)V

    .line 9
    invoke-virtual {p0, p1}, Lb/n/a/a;->b(Ljava/io/InputStream;)V

    .line 10
    iget p1, p0, Lb/n/a/a;->K:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 11
    iget-object p1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 12
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/n/a/a$b;

    if-eqz p1, :cond_0

    .line 13
    new-instance v1, Lb/n/a/a$a;

    iget-object p1, p1, Lb/n/a/a$b;->c:[B

    invoke-direct {v1, p1}, Lb/n/a/a$a;-><init>([B)V

    .line 14
    iget-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lb/n/a/a$a;->a(Ljava/nio/ByteOrder;)V

    const-wide/16 v2, 0x6

    .line 15
    invoke-virtual {v1, v2, v3}, Lb/n/a/a$a;->h(J)V

    const/16 p1, 0x9

    .line 16
    invoke-virtual {p0, v1, p1}, Lb/n/a/a;->b(Lb/n/a/a$a;I)V

    .line 17
    iget-object v1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object p1, v1, p1

    const-string v1, "ColorSpace"

    .line 18
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/n/a/a$b;

    if-eqz p1, :cond_0

    .line 19
    iget-object v2, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final c(Lb/n/a/a$a;I)V
    .locals 3

    .line 20
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/n/a/a$b;

    .line 22
    iget-object v1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/n/a/a$b;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 24
    :cond_0
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/n/a/a$b;

    if-eqz v0, :cond_1

    .line 26
    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 27
    invoke-virtual {v0, v1}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 28
    invoke-virtual {p0, p1, v0, p2}, Lb/n/a/a;->a(Lb/n/a/a$a;II)V

    :cond_1
    return-void
.end method

.method public final c([B)Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "FUJIFILMCCD-RAW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3
    aget-byte v3, p1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final d(Lb/n/a/a$a;)V
    .locals 3

    .line 6
    invoke-virtual {p0, p1}, Lb/n/a/a;->c(Lb/n/a/a$a;)V

    .line 7
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "JpgFromRaw"

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/n/a/a$b;

    if-eqz v0, :cond_0

    .line 9
    iget v0, p0, Lb/n/a/a;->X:I

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v0, v2}, Lb/n/a/a;->a(Lb/n/a/a$a;II)V

    .line 10
    :cond_0
    iget-object p1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    const-string v0, "ISO"

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/n/a/a$b;

    .line 12
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "PhotographicSensitivity"

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/n/a/a$b;

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final d(Lb/n/a/a$a;I)V
    .locals 9

    .line 15
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/n/a/a$b;

    .line 17
    iget-object v1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/n/a/a$b;

    .line 19
    iget-object v2, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 20
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/n/a/a$b;

    .line 21
    iget-object v3, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 22
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/n/a/a$b;

    .line 23
    iget-object v4, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 24
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/n/a/a$b;

    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v0, :cond_5

    .line 25
    iget p1, v0, Lb/n/a/a$b;->a:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v7, "Invalid crop size values. cropSize="

    const-string v8, "ExifInterface"

    if-ne p1, v1, :cond_2

    .line 26
    iget-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 27
    invoke-virtual {v0, p1}, Lb/n/a/a$b;->d(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lb/n/a/a$d;

    if-eqz p1, :cond_1

    .line 28
    array-length v0, p1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    aget-object v0, p1, v3

    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 30
    invoke-static {v0, v1}, Lb/n/a/a$b;->a(Lb/n/a/a$d;Ljava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v0

    .line 31
    aget-object p1, p1, v2

    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 32
    invoke-static {p1, v1}, Lb/n/a/a$b;->a(Lb/n/a/a$d;Ljava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object p1

    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 36
    :cond_2
    iget-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 37
    invoke-virtual {v0, p1}, Lb/n/a/a$b;->d(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    .line 38
    array-length v0, p1

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 39
    :cond_3
    aget v0, p1, v3

    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 40
    invoke-static {v0, v1}, Lb/n/a/a$b;->a(ILjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v0

    .line 41
    aget p1, p1, v2

    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 42
    invoke-static {p1, v1}, Lb/n/a/a$b;->a(ILjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object p1

    .line 43
    :goto_1
    iget-object v1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 45
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 48
    iget-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 49
    iget-object v0, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 50
    iget-object v1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 51
    iget-object v3, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_7

    if-le v1, v2, :cond_7

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 52
    iget-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 53
    invoke-static {v0, p1}, Lb/n/a/a$b;->a(ILjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 55
    invoke-static {v1, v0}, Lb/n/a/a$b;->a(ILjava/nio/ByteOrder;)Lb/n/a/a$b;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 58
    :cond_6
    invoke-virtual {p0, p1, p2}, Lb/n/a/a;->c(Lb/n/a/a$a;I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final d([B)Z
    .locals 1

    .line 1
    new-instance v0, Lb/n/a/a$a;

    invoke-direct {v0, p1}, Lb/n/a/a$a;-><init>([B)V

    .line 2
    invoke-virtual {p0, v0}, Lb/n/a/a;->e(Lb/n/a/a$a;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    .line 3
    iget-object p1, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lb/n/a/a$a;->a(Ljava/nio/ByteOrder;)V

    .line 4
    invoke-virtual {v0}, Lb/n/a/a$a;->readShort()S

    move-result p1

    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/16 v0, 0x55

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e(Lb/n/a/a$a;)Ljava/nio/ByteOrder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lb/n/a/a$a;->readShort()S

    move-result p1

    const/16 v0, 0x4949

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4d4d

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1
.end method

.method public final f(Lb/n/a/a$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/n/a/a;->L:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "Compression"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/n/a/a$b;

    const/4 v2, 0x6

    if-eqz v1, :cond_2

    .line 3
    iget-object v3, p0, Lb/n/a/a;->N:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Lb/n/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Lb/n/a/a;->S:I

    .line 4
    iget v1, p0, Lb/n/a/a;->S:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, v0}, Lb/n/a/a;->a(Lb/n/a/a$a;Ljava/util/HashMap;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lb/n/a/a;->a(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0, p1, v0}, Lb/n/a/a;->b(Lb/n/a/a$a;Ljava/util/HashMap;)V

    goto :goto_0

    .line 8
    :cond_2
    iput v2, p0, Lb/n/a/a;->S:I

    .line 9
    invoke-virtual {p0, p1, v0}, Lb/n/a/a;->a(Lb/n/a/a$a;Ljava/util/HashMap;)V

    :cond_3
    :goto_0
    return-void
.end method
