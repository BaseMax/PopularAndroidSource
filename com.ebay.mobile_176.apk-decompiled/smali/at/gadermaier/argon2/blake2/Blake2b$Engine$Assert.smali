.class public final Lat/gadermaier/argon2/blake2/Blake2b$Engine$Assert;
.super Ljava/lang/Object;
.source "Blake2b.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/gadermaier/argon2/blake2/Blake2b$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Assert"
.end annotation


# static fields
.field public static final exclusiveLowerBound:Ljava/lang/String; = "\'%s\' %d is <= %d"

.field public static final exclusiveUpperBound:Ljava/lang/String; = "\'%s\' %d is >= %d"

.field public static final inclusiveLowerBound:Ljava/lang/String; = "\'%s\' %d is < %d"

.field public static final inclusiveUpperBound:Ljava/lang/String; = "\'%s\' %d is > %d"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assertFail(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 900
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x3

    .line 901
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p3, v0, p0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
