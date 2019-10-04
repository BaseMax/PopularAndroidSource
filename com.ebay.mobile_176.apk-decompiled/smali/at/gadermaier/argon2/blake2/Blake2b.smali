.class public interface abstract Lat/gadermaier/argon2/blake2/Blake2b;
.super Ljava/lang/Object;
.source "Blake2b.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/gadermaier/argon2/blake2/Blake2b$Param;,
        Lat/gadermaier/argon2/blake2/Blake2b$Engine;,
        Lat/gadermaier/argon2/blake2/Blake2b$Tree;,
        Lat/gadermaier/argon2/blake2/Blake2b$Mac;,
        Lat/gadermaier/argon2/blake2/Blake2b$Digest;,
        Lat/gadermaier/argon2/blake2/Blake2b$Spec;
    }
.end annotation


# virtual methods
.method public abstract digest([BII)V
.end method

.method public abstract digest()[B
.end method

.method public abstract digest([B)[B
.end method

.method public abstract reset()V
.end method

.method public abstract update(B)V
.end method

.method public abstract update([B)V
.end method

.method public abstract update([BII)V
.end method
