.class final Lcom/raizlabs/android/dbflow/c/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/raizlabs/android/dbflow/c/c;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/c/c;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/c$5;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c$5;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/c/c;->b(Lcom/raizlabs/android/dbflow/c/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c$5;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/c;->refreshAsync()V

    goto :goto_0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c$5;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/c/c;->c(Lcom/raizlabs/android/dbflow/c/c;)Z

    .line 643
    :goto_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c$5;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/c/c;->d(Lcom/raizlabs/android/dbflow/c/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c$5;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/c/c;->d(Lcom/raizlabs/android/dbflow/c/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$c;->onSuccess(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V

    :cond_1
    return-void
.end method
