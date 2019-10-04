.class public Lat/gadermaier/argon2/Constants$Defaults;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/gadermaier/argon2/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Defaults"
.end annotation


# static fields
.field public static final ARGON2_VERSION_NUMBER:I = 0x13

.field public static final ENCODED_ONLY:Z = false

.field public static final LANES_DEF:I = 0x1

.field public static final LOG_M_COST_DEF:I = 0xc

.field public static final OUTLEN_DEF:I = 0x20

.field public static final RAW_ONLY:Z = false

.field public static final TYPE_DEF:Lat/gadermaier/argon2/model/Argon2Type;

.field public static final T_COST_DEF:I = 0x3

.field public static final VERSION_DEF:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Lat/gadermaier/argon2/model/Argon2Type;->Argon2i:Lat/gadermaier/argon2/model/Argon2Type;

    sput-object v0, Lat/gadermaier/argon2/Constants$Defaults;->TYPE_DEF:Lat/gadermaier/argon2/model/Argon2Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
