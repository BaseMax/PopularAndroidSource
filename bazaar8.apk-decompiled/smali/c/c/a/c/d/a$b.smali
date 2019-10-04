.class public final Lc/c/a/c/d/a$b;
.super Lc/c/a/c/d/a;
.source "LocalReferrer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/c/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "intent"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lc/c/a/c/d/a;-><init>(Ljava/lang/String;Lh/f/b/f;)V

    return-void
.end method
