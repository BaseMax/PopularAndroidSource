.class public final Lcab/snapp/mapmodule/a/a/o;
.super Lcab/snapp/mapmodule/a/a/m;
.source "SourceFile"


# instance fields
.field public latitude:D

.field public longitude:D

.field public zoom:F


# direct methods
.method public constructor <init>(IDDF)V
    .locals 1

    const/16 v0, 0x3ff

    .line 13
    invoke-direct {p0, v0, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    .line 14
    iput-wide p2, p0, Lcab/snapp/mapmodule/a/a/o;->latitude:D

    .line 15
    iput-wide p4, p0, Lcab/snapp/mapmodule/a/a/o;->longitude:D

    .line 16
    iput p6, p0, Lcab/snapp/mapmodule/a/a/o;->zoom:F

    return-void
.end method
