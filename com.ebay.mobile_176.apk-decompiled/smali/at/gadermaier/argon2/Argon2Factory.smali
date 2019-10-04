.class public Lat/gadermaier/argon2/Argon2Factory;
.super Ljava/lang/Object;
.source "Argon2Factory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lat/gadermaier/argon2/Argon2;
    .locals 1

    .line 5
    new-instance v0, Lat/gadermaier/argon2/Argon2;

    invoke-direct {v0}, Lat/gadermaier/argon2/Argon2;-><init>()V

    return-object v0
.end method
