.class public final Lcab/snapp/mapmodule/a/a/j;
.super Lcab/snapp/mapmodule/a/a/m;
.source "SourceFile"


# instance fields
.field public latitude:D

.field public longitude:D

.field public zoomLevel:F


# direct methods
.method public constructor <init>(IDDF)V
    .locals 1

    const/16 v0, 0x3ee

    .line 12
    invoke-direct {p0, v0, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    .line 13
    iput-wide p2, p0, Lcab/snapp/mapmodule/a/a/j;->latitude:D

    .line 14
    iput-wide p4, p0, Lcab/snapp/mapmodule/a/a/j;->longitude:D

    .line 15
    iput p6, p0, Lcab/snapp/mapmodule/a/a/j;->zoomLevel:F

    return-void
.end method
