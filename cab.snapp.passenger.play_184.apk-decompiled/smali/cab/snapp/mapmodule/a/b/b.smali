.class public final Lcab/snapp/mapmodule/a/b/b;
.super Lcab/snapp/mapmodule/a/b/c;
.source "SourceFile"


# instance fields
.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>(IDD)V
    .locals 1

    const/16 v0, 0x7d1

    .line 11
    invoke-direct {p0, p1, v0}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 12
    iput-wide p2, p0, Lcab/snapp/mapmodule/a/b/b;->latitude:D

    .line 13
    iput-wide p4, p0, Lcab/snapp/mapmodule/a/b/b;->longitude:D

    return-void
.end method