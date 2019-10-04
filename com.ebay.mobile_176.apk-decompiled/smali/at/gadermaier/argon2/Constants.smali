.class public Lat/gadermaier/argon2/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/gadermaier/argon2/Constants$Messages;,
        Lat/gadermaier/argon2/Constants$Constraints;,
        Lat/gadermaier/argon2/Constants$Defaults;
    }
.end annotation


# static fields
.field public static final ARGON2_ADDRESSES_IN_BLOCK:I = 0x80

.field public static final ARGON2_BLOCK_SIZE:I = 0x400

.field public static final ARGON2_DEFAULT_FLAGS:I = 0x0

.field public static final ARGON2_PREHASH_DIGEST_LENGTH:I = 0x40

.field public static final ARGON2_PREHASH_SEED_LENGTH:I = 0x48

.field public static final ARGON2_QWORDS_IN_BLOCK:I = 0x80

.field public static final ARGON2_SYNC_POINTS:I = 0x4

.field public static final ARGON2_VERSION_10:I = 0x10

.field public static final ARGON2_VERSION_13:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
