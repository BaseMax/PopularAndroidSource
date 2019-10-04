.class public final Lcab/snapp/mapmodule/a/a/b;
.super Lcab/snapp/mapmodule/a/a/m;
.source "SourceFile"


# instance fields
.field public anchorX:F

.field public anchorY:F

.field public icon:I

.field public markerTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIFF)V
    .locals 1

    const/16 v0, 0x401

    .line 20
    invoke-direct {p0, v0, p2}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    .line 21
    iput p3, p0, Lcab/snapp/mapmodule/a/a/b;->icon:I

    .line 22
    iput p4, p0, Lcab/snapp/mapmodule/a/a/b;->anchorX:F

    .line 23
    iput p5, p0, Lcab/snapp/mapmodule/a/a/b;->anchorY:F

    .line 24
    iput-object p1, p0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    return-void
.end method
