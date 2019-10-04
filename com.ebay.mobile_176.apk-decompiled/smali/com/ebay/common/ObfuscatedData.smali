.class public Lcom/ebay/common/ObfuscatedData;
.super Ljava/lang/Object;
.source "ObfuscatedData.java"


# static fields
.field public static final decryptedAppId:Ljava/lang/String;

.field public static final decryptedCertId:Ljava/lang/String;

.field public static final decryptedDevId:Ljava/lang/String;

.field public static final decryptedPayPalAppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->isQaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AndrApp"

    .line 17
    sput-object v0, Lcom/ebay/common/ObfuscatedData;->decryptedAppId:Ljava/lang/String;

    const-string v0, "AndrDev"

    .line 18
    sput-object v0, Lcom/ebay/common/ObfuscatedData;->decryptedDevId:Ljava/lang/String;

    const-string v0, "AndrCert"

    .line 19
    sput-object v0, Lcom/ebay/common/ObfuscatedData;->decryptedCertId:Ljava/lang/String;

    const-string v0, "APP-3U265555Y6923733N"

    .line 20
    sput-object v0, Lcom/ebay/common/ObfuscatedData;->decryptedPayPalAppId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    .line 26
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 30
    new-array v2, v0, [B

    fill-array-data v2, :array_1

    .line 34
    new-array v3, v0, [B

    fill-array-data v3, :array_2

    .line 38
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    .line 42
    new-instance v4, Lcom/ebay/common/util/EbaySecureDataEncoder;

    invoke-direct {v4}, Lcom/ebay/common/util/EbaySecureDataEncoder;-><init>()V

    .line 57
    invoke-virtual {v4, v1}, Lcom/ebay/common/util/EbaySecureDataEncoder;->decode([B)V

    .line 58
    invoke-virtual {v4, v2}, Lcom/ebay/common/util/EbaySecureDataEncoder;->decode([B)V

    .line 59
    invoke-virtual {v4, v3}, Lcom/ebay/common/util/EbaySecureDataEncoder;->decode([B)V

    .line 60
    invoke-virtual {v4, v0}, Lcom/ebay/common/util/EbaySecureDataEncoder;->decode([B)V

    .line 62
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v4, Lcom/ebay/common/ObfuscatedData;->decryptedAppId:Ljava/lang/String;

    .line 63
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lcom/ebay/common/ObfuscatedData;->decryptedDevId:Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lcom/ebay/common/ObfuscatedData;->decryptedCertId:Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x15

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    sput-object v1, Lcom/ebay/common/ObfuscatedData;->decryptedPayPalAppId:Ljava/lang/String;

    :goto_0
    return-void

    :array_0
    .array-data 1
        -0x23t
        -0x6et
        0x69t
        -0xat
        -0x44t
        0x6et
        -0x5bt
        -0x47t
        0x59t
        0x17t
        0x75t
        -0x8t
        -0x7ct
        -0x77t
        0x5t
        -0x55t
        0x33t
        -0x6ct
        -0x54t
        -0x1dt
        0x5t
        0x2et
        0x71t
        0x66t
        0x3ct
        -0x7t
        -0x25t
        0x3ft
        -0x58t
        0x56t
        -0x6bt
        0x1bt
        -0xat
        -0x1dt
        -0x26t
        -0x21t
    .end array-data

    :array_1
    .array-data 1
        0x28t
        0x61t
        -0x52t
        -0x17t
        0x15t
        -0x6t
        0xbt
        -0x4at
        0x4t
        0x1et
        -0x1at
        -0x29t
        -0x48t
        0x26t
        -0x68t
        -0x79t
        -0x23t
        -0x6ft
        0xet
        0x33t
        0x6ct
        -0x13t
        0x34t
        0xft
        0x72t
        0x47t
        -0x2ft
        -0x3bt
        -0x26t
        -0x67t
        0x40t
        0x3ct
        0x7bt
        -0x4ft
        0x26t
        -0x6bt
    .end array-data

    :array_2
    .array-data 1
        0x56t
        0x63t
        0x2bt
        0x4ct
        -0x80t
        0x19t
        -0x18t
        -0x66t
        0x3et
        -0x31t
        0x58t
        0x47t
        -0x80t
        -0x29t
        0x2at
        -0x35t
        0x75t
        0x7et
        0x57t
        -0x1bt
        0x8t
        -0x5et
        -0x53t
        0xft
        0x70t
        0x1t
        0x65t
        -0x2t
        0x3bt
        0x7ft
        -0x1dt
        0x42t
        0x29t
        0x18t
        -0x58t
        -0x58t
    .end array-data

    :array_3
    .array-data 1
        -0xft
        -0x20t
        -0x54t
        0xdt
        -0x24t
        0x4t
        0x1bt
        -0x4et
        0x74t
        0x14t
        -0x42t
        0x2bt
        -0x1et
        0x49t
        -0x56t
        -0x56t
        0x13t
        -0x50t
        0x35t
        0xdt
        -0x80t
        0x11t
        -0x31t
        -0x19t
        -0x35t
        0x7t
        0x2dt
        0x9t
        -0x62t
        -0x20t
        0x2at
        -0x4dt
        0x7at
        0x26t
        -0xft
        -0x44t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
