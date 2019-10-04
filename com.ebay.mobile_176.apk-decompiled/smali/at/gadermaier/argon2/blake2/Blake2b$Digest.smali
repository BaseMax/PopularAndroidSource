.class public Lat/gadermaier/argon2/blake2/Blake2b$Digest;
.super Lat/gadermaier/argon2/blake2/Blake2b$Engine;
.source "Blake2b.java"

# interfaces
.implements Lat/gadermaier/argon2/blake2/Blake2b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/gadermaier/argon2/blake2/Blake2b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;-><init>()V

    return-void
.end method

.method private constructor <init>(Lat/gadermaier/argon2/blake2/Blake2b$Param;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;-><init>(Lat/gadermaier/argon2/blake2/Blake2b$Param;)V

    return-void
.end method

.method public static newInstance()Lat/gadermaier/argon2/blake2/Blake2b$Digest;
    .locals 1

    .line 148
    new-instance v0, Lat/gadermaier/argon2/blake2/Blake2b$Digest;

    invoke-direct {v0}, Lat/gadermaier/argon2/blake2/Blake2b$Digest;-><init>()V

    return-object v0
.end method

.method public static newInstance(I)Lat/gadermaier/argon2/blake2/Blake2b$Digest;
    .locals 2

    .line 151
    new-instance v0, Lat/gadermaier/argon2/blake2/Blake2b$Digest;

    new-instance v1, Lat/gadermaier/argon2/blake2/Blake2b$Param;

    invoke-direct {v1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;-><init>()V

    invoke-virtual {v1, p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setDigestLength(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object p0

    invoke-direct {v0, p0}, Lat/gadermaier/argon2/blake2/Blake2b$Digest;-><init>(Lat/gadermaier/argon2/blake2/Blake2b$Param;)V

    return-object v0
.end method

.method public static newInstance(Lat/gadermaier/argon2/blake2/Blake2b$Param;)Lat/gadermaier/argon2/blake2/Blake2b$Digest;
    .locals 1

    .line 154
    new-instance v0, Lat/gadermaier/argon2/blake2/Blake2b$Digest;

    invoke-direct {v0, p0}, Lat/gadermaier/argon2/blake2/Blake2b$Digest;-><init>(Lat/gadermaier/argon2/blake2/Blake2b$Param;)V

    return-object v0
.end method
