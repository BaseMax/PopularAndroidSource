.class public final Lf/a/a/e/p;
.super Ljava/lang/Object;
.source "InlineUploadManager.java"

# interfaces
.implements Lf/a/a/c/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/r;->a(Lf/a/a/e/g;Lf/a/a/e/b/b/y$a;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/b/b/y$a;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/y$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/p;->a:Lf/a/a/e/b/b/y$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/a/a/e/p;->a:Lf/a/a/e/b/b/y$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lf/a/a/e/b/b/y$a;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lf/a/a/e/p;->a:Lf/a/a/e/b/b/y$a;

    invoke-interface {v0, p1}, Lf/a/a/e/b/b/y$a;->setValue(Ljava/lang/String;)V

    return-void
.end method
