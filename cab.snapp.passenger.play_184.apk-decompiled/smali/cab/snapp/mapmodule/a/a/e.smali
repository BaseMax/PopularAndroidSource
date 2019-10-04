.class public final Lcab/snapp/mapmodule/a/a/e;
.super Lcab/snapp/mapmodule/a/a/m;
.source "SourceFile"


# instance fields
.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>(IDD)V
    .locals 1

    const/16 v0, 0x3f1

    .line 11
    invoke-direct {p0, v0, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    .line 12
    iput-wide p2, p0, Lcab/snapp/mapmodule/a/a/e;->latitude:D

    .line 13
    iput-wide p4, p0, Lcab/snapp/mapmodule/a/a/e;->longitude:D

    return-void
.end method
