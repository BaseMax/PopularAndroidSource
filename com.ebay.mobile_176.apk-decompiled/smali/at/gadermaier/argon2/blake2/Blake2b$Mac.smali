.class public Lat/gadermaier/argon2/blake2/Blake2b$Mac;
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
    name = "Mac"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    const-class v0, Lat/gadermaier/argon2/blake2/Blake2b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;-><init>()V

    return-void
.end method

.method private constructor <init>(Lat/gadermaier/argon2/blake2/Blake2b$Param;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;-><init>(Lat/gadermaier/argon2/blake2/Blake2b$Param;)V

    return-void
.end method

.method public static newInstance(Lat/gadermaier/argon2/blake2/Blake2b$Param;)Lat/gadermaier/argon2/blake2/Blake2b$Mac;
    .locals 1

    .line 184
    new-instance v0, Lat/gadermaier/argon2/blake2/Blake2b$Mac;

    invoke-direct {v0, p0}, Lat/gadermaier/argon2/blake2/Blake2b$Mac;-><init>(Lat/gadermaier/argon2/blake2/Blake2b$Param;)V

    return-object v0
.end method

.method public static newInstance(Ljava/security/Key;I)Lat/gadermaier/argon2/blake2/Blake2b$Mac;
    .locals 2

    .line 177
    new-instance v0, Lat/gadermaier/argon2/blake2/Blake2b$Mac;

    new-instance v1, Lat/gadermaier/argon2/blake2/Blake2b$Param;

    invoke-direct {v1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;-><init>()V

    invoke-virtual {v1, p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setKey(Ljava/security/Key;)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object p0

    invoke-virtual {p0, p1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setDigestLength(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object p0

    invoke-direct {v0, p0}, Lat/gadermaier/argon2/blake2/Blake2b$Mac;-><init>(Lat/gadermaier/argon2/blake2/Blake2b$Param;)V

    return-object v0
.end method

.method public static newInstance([B)Lat/gadermaier/argon2/blake2/Blake2b$Mac;
    .locals 2

    .line 169
    new-instance v0, Lat/gadermaier/argon2/blake2/Blake2b$Mac;

    new-instance v1, Lat/gadermaier/argon2/blake2/Blake2b$Param;

    invoke-direct {v1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;-><init>()V

    invoke-virtual {v1, p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setKey([B)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object p0

    invoke-direct {v0, p0}, Lat/gadermaier/argon2/blake2/Blake2b$Mac;-><init>(Lat/gadermaier/argon2/blake2/Blake2b$Param;)V

    return-object v0
.end method

.method public static newInstance([BI)Lat/gadermaier/argon2/blake2/Blake2b$Mac;
    .locals 2

    .line 173
    new-instance v0, Lat/gadermaier/argon2/blake2/Blake2b$Mac;

    new-instance v1, Lat/gadermaier/argon2/blake2/Blake2b$Param;

    invoke-direct {v1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;-><init>()V

    invoke-virtual {v1, p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setKey([B)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object p0

    invoke-virtual {p0, p1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setDigestLength(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object p0

    invoke-direct {v0, p0}, Lat/gadermaier/argon2/blake2/Blake2b$Mac;-><init>(Lat/gadermaier/argon2/blake2/Blake2b$Param;)V

    return-object v0
.end method
