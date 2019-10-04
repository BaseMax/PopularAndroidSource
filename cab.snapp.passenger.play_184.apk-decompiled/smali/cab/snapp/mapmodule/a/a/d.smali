.class public final Lcab/snapp/mapmodule/a/a/d;
.super Lcab/snapp/mapmodule/a/a/m;
.source "SourceFile"


# instance fields
.field public alpha:F

.field public anchorX:F

.field public anchorY:F

.field public icon:I

.field public latitude:D

.field public longitude:D

.field public markerTag:Ljava/lang/String;

.field public rotation:F


# direct methods
.method public constructor <init>(IDDIFFFFLjava/lang/String;)V
    .locals 1

    const/16 v0, 0x3ea

    .line 22
    invoke-direct {p0, v0, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    .line 23
    iput-wide p2, p0, Lcab/snapp/mapmodule/a/a/d;->latitude:D

    .line 24
    iput-wide p4, p0, Lcab/snapp/mapmodule/a/a/d;->longitude:D

    .line 25
    iput p6, p0, Lcab/snapp/mapmodule/a/a/d;->icon:I

    .line 26
    iput p7, p0, Lcab/snapp/mapmodule/a/a/d;->anchorX:F

    .line 27
    iput p8, p0, Lcab/snapp/mapmodule/a/a/d;->anchorY:F

    .line 28
    iput p9, p0, Lcab/snapp/mapmodule/a/a/d;->rotation:F

    .line 29
    iput p10, p0, Lcab/snapp/mapmodule/a/a/d;->alpha:F

    .line 30
    iput-object p11, p0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    return-void
.end method
