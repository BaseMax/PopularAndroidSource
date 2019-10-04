.class public final Lcab/snapp/mapmodule/a/a/a;
.super Lcab/snapp/mapmodule/a/a/m;
.source "SourceFile"


# instance fields
.field public anchorX:F

.field public anchorY:F

.field public icon:I

.field public latitude:D

.field public longitude:D

.field public markerTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IDDIFF)V
    .locals 1

    const/16 v0, 0x3e9

    .line 21
    invoke-direct {p0, v0, p2}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    .line 22
    iput-object p1, p0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    .line 23
    iput-wide p3, p0, Lcab/snapp/mapmodule/a/a/a;->latitude:D

    .line 24
    iput-wide p5, p0, Lcab/snapp/mapmodule/a/a/a;->longitude:D

    .line 25
    iput p7, p0, Lcab/snapp/mapmodule/a/a/a;->icon:I

    .line 26
    iput p8, p0, Lcab/snapp/mapmodule/a/a/a;->anchorX:F

    .line 27
    iput p9, p0, Lcab/snapp/mapmodule/a/a/a;->anchorY:F

    return-void
.end method
