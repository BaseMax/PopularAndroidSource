.class public final Lcab/snapp/mapmodule/a/a/i;
.super Lcab/snapp/mapmodule/a/a/m;
.source "SourceFile"


# instance fields
.field public markerTag:Ljava/lang/String;

.field public rotation:F


# direct methods
.method public constructor <init>(IFLjava/lang/String;)V
    .locals 1

    const/16 v0, 0x3ed

    .line 14
    invoke-direct {p0, v0, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    .line 15
    iput p2, p0, Lcab/snapp/mapmodule/a/a/i;->rotation:F

    .line 16
    iput-object p3, p0, Lcab/snapp/mapmodule/a/a/i;->markerTag:Ljava/lang/String;

    return-void
.end method
