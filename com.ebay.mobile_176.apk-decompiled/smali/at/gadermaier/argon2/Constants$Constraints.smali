.class public Lat/gadermaier/argon2/Constants$Constraints;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/gadermaier/argon2/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constraints"
.end annotation


# static fields
.field public static final MAX_AD_LENGTH:I = 0x7fffffff

.field public static final MAX_ITERATIONS:I = 0x7fffffff

.field public static final MAX_OUTLEN:I = 0x7fffffff

.field public static final MAX_PARALLELISM:I = 0x1000000

.field public static final MAX_PASSWORD_LEN:I = 0x80

.field public static final MAX_PWD_LENGTH:I = 0x7fffffff

.field public static final MAX_SALT_LENGTH:I = 0x7fffffff

.field public static final MAX_SECRET_LENGTH:I = 0x7fffffff

.field public static final MIN_ITERATIONS:I = 0x1

.field public static final MIN_MEMORY:I = 0x8

.field public static final MIN_OUTLEN:I = 0x4

.field public static final MIN_PARALLELISM:I = 0x1

.field public static final MIN_PWD_LENGTH:I

.field public static final MIN_SALT_LENGTH:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
