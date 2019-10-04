.class public final Lcab/snapp/mapmodule/a/a/h;
.super Lcab/snapp/mapmodule/a/a/m;
.source "SourceFile"


# instance fields
.field public alpha:F

.field public markerTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(IFLjava/lang/String;)V
    .locals 1

    const/16 v0, 0x3ec

    .line 14
    invoke-direct {p0, v0, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    .line 15
    iput p2, p0, Lcab/snapp/mapmodule/a/a/h;->alpha:F

    .line 16
    iput-object p3, p0, Lcab/snapp/mapmodule/a/a/h;->markerTag:Ljava/lang/String;

    return-void
.end method
