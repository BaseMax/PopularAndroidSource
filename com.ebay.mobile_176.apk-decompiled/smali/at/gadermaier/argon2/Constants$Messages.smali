.class public Lat/gadermaier/argon2/Constants$Messages;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/gadermaier/argon2/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Messages"
.end annotation


# static fields
.field public static final ADDITIONAL_MAX_MSG:Ljava/lang/String; = "additional data too long"

.field public static final M_MIN_MSG:Ljava/lang/String; = "memory too small"

.field public static final PWD_MAX_MSG:Ljava/lang/String; = "password too long"

.field public static final PWD_MIN_MSG:Ljava/lang/String; = "password too short"

.field public static final P_MAX_MSG:Ljava/lang/String; = "parallelism cannot be greater than 16777216"

.field public static final P_MIN_MSG:Ljava/lang/String; = "degree of parallelism cannot be smaller than one"

.field public static final SALT_MAX_MSG:Ljava/lang/String; = "salt too long"

.field public static final SALT_MIN_MSG:Ljava/lang/String; = "salt too short"

.field public static final SECRET_MAX_MSG:Ljava/lang/String; = "secret too long"

.field public static final T_MAX_MSG:Ljava/lang/String; = "number of iterations too high"

.field public static final T_MIN_MSG:Ljava/lang/String; = "number of iterations cannot be less than one"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
