.class public final Lcom/mapbox/android/telemetry/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    const/16 v0, 0x18

    if-gt p1, v0, :cond_0

    .line 13
    iput p1, p0, Lcom/mapbox/android/telemetry/ac;->a:I

    return-void

    .line 1018
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The interval passed in must be an an integer in the range of 1 to 24 hours."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
