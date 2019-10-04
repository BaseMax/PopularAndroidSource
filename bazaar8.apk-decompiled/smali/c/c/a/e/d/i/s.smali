.class public final Lc/c/a/e/d/i/s;
.super Ljava/lang/Object;
.source "PartDownloadHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/i/t;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/e/d/i/t;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/i/t;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/e/d/i/s;->a:Lc/c/a/e/d/i/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/i/s;->a:Lc/c/a/e/d/i/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/c/a/e/d/i/t;->a(Lc/c/a/e/d/i/t;Z)V

    return-void
.end method
