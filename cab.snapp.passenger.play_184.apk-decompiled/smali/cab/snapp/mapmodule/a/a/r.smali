.class public final Lcab/snapp/mapmodule/a/a/r;
.super Lcab/snapp/mapmodule/a/a/m;
.source "SourceFile"


# instance fields
.field public zoomLevel:F


# direct methods
.method public constructor <init>(IF)V
    .locals 1

    const/16 v0, 0x3f2

    .line 10
    invoke-direct {p0, v0, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    .line 11
    iput p2, p0, Lcab/snapp/mapmodule/a/a/r;->zoomLevel:F

    return-void
.end method
