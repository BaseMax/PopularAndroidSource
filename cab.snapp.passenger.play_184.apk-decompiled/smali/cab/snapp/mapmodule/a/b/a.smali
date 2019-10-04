.class public final Lcab/snapp/mapmodule/a/b/a;
.super Lcab/snapp/mapmodule/a/b/c;
.source "SourceFile"


# instance fields
.field public latitude:D

.field public longitude:D

.field public tilt:I

.field public zoom:I


# direct methods
.method public constructor <init>(IDDII)V
    .locals 1

    const/16 v0, 0x7d0

    .line 13
    invoke-direct {p0, p1, v0}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 14
    iput-wide p2, p0, Lcab/snapp/mapmodule/a/b/a;->latitude:D

    .line 15
    iput-wide p4, p0, Lcab/snapp/mapmodule/a/b/a;->longitude:D

    .line 16
    iput p6, p0, Lcab/snapp/mapmodule/a/b/a;->zoom:I

    .line 17
    iput p7, p0, Lcab/snapp/mapmodule/a/b/a;->tilt:I

    return-void
.end method
