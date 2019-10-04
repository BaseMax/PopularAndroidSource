.class public final Lcab/snapp/mapmodule/a/a/c;
.super Lcab/snapp/mapmodule/a/a/m;
.source "SourceFile"


# instance fields
.field public anchorX:F

.field public anchorY:F

.field public icon:I

.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>(ILcab/snapp/mapmodule/a/a/a;)V
    .locals 2

    .line 21
    iget v0, p2, Lcab/snapp/mapmodule/a/a/a;->id:I

    invoke-direct {p0, p1, v0}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    .line 22
    iget-wide v0, p2, Lcab/snapp/mapmodule/a/a/a;->latitude:D

    iput-wide v0, p0, Lcab/snapp/mapmodule/a/a/c;->latitude:D

    .line 23
    iget-wide v0, p2, Lcab/snapp/mapmodule/a/a/a;->longitude:D

    iput-wide v0, p0, Lcab/snapp/mapmodule/a/a/c;->longitude:D

    .line 24
    iget p1, p2, Lcab/snapp/mapmodule/a/a/a;->icon:I

    iput p1, p0, Lcab/snapp/mapmodule/a/a/c;->icon:I

    .line 25
    iget p1, p2, Lcab/snapp/mapmodule/a/a/a;->anchorX:F

    iput p1, p0, Lcab/snapp/mapmodule/a/a/c;->anchorX:F

    .line 26
    iget p1, p2, Lcab/snapp/mapmodule/a/a/a;->anchorY:F

    iput p1, p0, Lcab/snapp/mapmodule/a/a/c;->anchorY:F

    return-void
.end method
